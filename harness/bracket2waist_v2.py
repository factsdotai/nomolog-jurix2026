"""Deterministic translator: bracket IR v2 programs -> waist fragment.

Implements translation-policy-v2.md (T12-T14) on top of the frozen v1
machinery in bracket2waist.py, which is imported and never modified. v1
single-statement behavior is reproduced exactly for one-statement programs
(same T-rules, same shared-scope Translator, same sat-head computation).

Usage:  python3 bracket2waist_v2.py "<v2 program string>"
"""
import hashlib
import sys

from bracket2waist import (Translator, _drop_redundant_sorts, attr_evars,
                           br)
from lrml_ir import IRError
import lrml_ir_v2

POLICY_VERSION = 'translation-policy-v2.md'


def _normalize_statement(then_node, known_deontic):
    """v1 deontic normalization: unknown head -> obligation (P1); T8 duals."""
    head = then_node[2][0]
    if known_deontic:
        deontic = head[1]
    else:
        head = ('call', 'obligation', then_node[2])
        deontic = 'obligation'
    body_node = (head[2][0] if len(head[2]) == 1
                 else ('call', 'and', head[2]))
    while body_node[0] == 'call' and body_node[1] == 'not' \
            and deontic in ('obligation', 'prohibition') and body_node[2]:
        deontic = ('prohibition' if deontic == 'obligation' else 'obligation')
        body_node = body_node[2][0]
    return deontic, body_node


def translate_program(text):
    """v2 program text -> waist program text. Raises IRError only on input
    failing lrml-target-v2.md (classified upstream as parse_failure)."""
    v = lrml_ir_v2.validate_program(text)
    if v['program'] is None:
        raise IRError(v.get('error', 'unextractable program'))
    if not v['if_then_wellformed']:
        raise IRError(v.get('error', 'statement not if/then wellformed'))
    stmts = v['program']['statements']       # [(label, span, validate_ir)]
    overrides = v['program']['overrides']
    labels = [l for l, _, _ in stmts]
    overrider = {a for a, b in overrides if a in labels and b in labels}

    # normalize first (no translator state needed), then run the entity
    # prepass: a permission-deontic overrider's consequent is inert (T14b),
    # so it must not contribute to the shared entity/sort scope either
    normalized = []
    for label, span, sv in stmts:
        cond_node, then_node = sv['tree'][0], sv['tree'][1]
        deontic, body_node = _normalize_statement(then_node,
                                                  sv['known_deontic'])
        normalized.append((label, cond_node, then_node, deontic, body_node))
    n_oblig = sum(1 for _, _, _, d, _ in normalized if d == 'obligation')

    tr = Translator()
    notes = []
    # T12: program-level co-reference — one entity scope across statements
    for label, cond_node, then_node, deontic, _ in normalized:
        tr.collect_entities(cond_node)
        if not (label in overrider and deontic == 'permission'):
            tr.collect_entities(then_node)

    rid = 0
    applies_lines, machinery, defeat_lines = [], [], []
    vio_ids = {}                             # label -> [violation rule ids]
    exempt_branches = {}                     # label -> [cond branches]

    for label, cond_node, _tn, deontic, body_node in normalized:
        cond = (tr.bool_dnf(('call', 'and', cond_node[2]))
                if cond_node[2] else [br([], set())])
        cond = _drop_redundant_sorts(cond, tr)
        vio_ids[label] = []
        if label in overrider:
            exempt_branches[label] = cond    # T14c: no applies contribution
        else:
            for cb in cond:
                line = (f'applies :- {", ".join(cb["lits"])}.'
                        if cb['lits'] else 'applies.')
                if line not in applies_lines:
                    applies_lines.append(line)

        if deontic == 'permission':
            if label not in overrider:
                machinery.append('% permission: no violation rule '
                                 '(policy P4)')
            continue                         # T14b: pure carve-out
        if deontic == 'prohibition':
            cons = _drop_redundant_sorts(tr.bool_dnf(body_node), tr)
            for cb in cond:
                for fb in cons:
                    rid += 1
                    body = ', '.join(br(cb['lits'] + fb['lits'],
                                        set())['lits'])
                    machinery.append(f'r{rid}: violation <= {body}.')
                    vio_ids[label].append(rid)
        else:                                # obligation (T10 + sat fix)
            cons = _drop_redundant_sorts(tr.bool_dnf(body_node), tr)
            shared = set.intersection(
                *[attr_evars(tr, b) for b in cond]) if cond else set()
            cons_ents = (set.union(*[attr_evars(tr, b) for b in cons])
                         if cons else set())
            head_ents = {e for e in shared & cons_ents
                         if all(e in attr_evars(tr, b) or tr.sort_lits(e)
                                for b in cons)}
            head_vars = sorted(tr.evars[e] for e in head_ents)
            base = ('obligation_met' if n_oblig == 1
                    else f'obligation_met_{label}')
            sat = (f'{base}(' + ', '.join(head_vars) + ')'
                   if head_vars else base)
            for fb in cons:
                binds = [l for e in sorted(head_ents - attr_evars(tr, fb))
                         for l in tr.sort_lits(e)]
                lits = binds + fb['lits']
                machinery.append(f'{sat} :- {", ".join(lits)}.'
                                 if lits else f'{sat}.')
            for cb in cond:
                rid += 1
                body = ', '.join(cb['lits'] + [f'not {sat}'])
                machinery.append(f'r{rid}: violation <= {body}.')
                vio_ids[label].append(rid)

    if not applies_lines:
        # every statement overrides (degenerate); P1: fall back to all
        # conditions so applicability is not vacuously false
        notes.append('% applies-fallback: all statements are overriders')
        for label in exempt_branches:
            for cb in exempt_branches[label]:
                line = (f'applies :- {", ".join(cb["lits"])}.'
                        if cb['lits'] else 'applies.')
                if line not in applies_lines:
                    applies_lines.append(line)

    # T14a: overrides -> the gold defeat idiom
    conflicts_emitted = set()
    for over, under in overrides:
        if over not in labels or under not in labels:
            notes.append(f'% override-dangling: override( {over}, {under})')
            continue
        if not vio_ids.get(under):
            notes.append(f'% override-inert: {under} has no violation rules')
            continue
        head = f'exempt_{over}'
        ex_ids = []
        for cb in exempt_branches.get(over, [br([], set())]):
            if not cb['lits']:
                notes.append(f'% override-unconditional: {over}')
                defeat_lines.append(f'{head}.')
                continue
            rid += 1
            defeat_lines.append(
                f'r{rid}: {head} <= {", ".join(cb["lits"])}.')
            ex_ids.append(rid)
        if head not in conflicts_emitted:
            defeat_lines.append(f'#conflict violation, {head}.')
            conflicts_emitted.add(head)
        for e in ex_ids:
            for u in vio_ids[under]:
                defeat_lines.append(f'r{e} > r{u}.')

    header = [
        f'% translated by bracket2waist_v2.py under {POLICY_VERSION}',
        f'% ir-sha256: {hashlib.sha256(text.encode()).hexdigest()[:16]}',
        f'% n_statements: {v["n_statements"]}  n_overrides: '
        f'{v["n_overrides"]}  dangling: {v["dangling_override_count"]}',
    ] + notes + tr.notes
    return '\n'.join(header + applies_lines + machinery + defeat_lines
                     + tr.helpers) + '\n'


if __name__ == '__main__':
    print(translate_program(' '.join(sys.argv[1:])))
