"""Parser/extractor for bracket IR v2 programs (lrml-target-v2.md §2).

v2 = v1 plus statement labels, multi-statement programs, and
`override(label, label)` statements. Single v1 statements are valid v2
programs. Stdlib only; v1 modules are reused, never modified.
"""
import re

from lrml_ir import _balance, norm_name, validate_ir

STMT_RE = re.compile(r'(?:([A-Za-z_]\w*)\s*:\s*)?if\s*\(')
OVERRIDE_RE = re.compile(r'override\s*\(')


def extract_program(text):
    """All statements of a raw model response, in textual order.
    Returns {'statements': [(label|None, ir_span)], 'overrides':
    [(over, under)]} with labels normalized, or None if no statement found.
    Extraction criterion per v1: a balanced `if(...), then(...)` span; v2
    adds labeled spans and balanced `override(a, b)` spans."""
    statements, overrides = [], []
    pos = 0
    while pos < len(text):
        m_s = STMT_RE.search(text, pos)
        m_o = OVERRIDE_RE.search(text, pos)
        if not m_s and not m_o:
            break
        if m_o and (not m_s or m_o.start() < m_s.start()):
            end = _balance(text, m_o.end() - 1)
            if end is None:
                pos = m_o.end()
                continue
            inner = text[m_o.end():end - 1]
            parts = [norm_name(p) for p in inner.split(',')]
            if len(parts) == 2 and all(parts):
                overrides.append((parts[0], parts[1]))
                pos = end
            else:
                pos = m_o.end()
            continue
        # if/then statement, optionally labeled
        i = _balance(text, m_s.end() - 1)
        if i is None:
            pos = m_s.end()
            continue
        m2 = re.match(r'\s*,\s*then\s*\(', text[i:])
        if not m2:
            pos = i
            continue
        j = _balance(text[i:], i and m2.end() - 1)
        if j is None:
            pos = i
            continue
        label = norm_name(m_s.group(1)) if m_s.group(1) else None
        statements.append((label, text[m_s.start():i + j]))
        pos = i + j
    if not statements and not overrides:
        return None
    # strip any leading "label:" from the stored span; keep label separately
    cleaned = []
    for label, span in statements:
        body = span.split(':', 1)[1].lstrip() if label else span
        cleaned.append((label, body))
    return {'statements': cleaned, 'overrides': overrides}


def program_text(prog):
    """Canonical stored form: one statement per line."""
    lines = [(f'{lab}: {ir}' if lab else ir) for lab, ir in prog['statements']]
    lines += [f'override( {a}, {b})' for a, b in prog['overrides']]
    return '\n'.join(lines)


def validate_program(text):
    """Structural validity for a v2 program (lrml-target-v2.md §2 metrics)."""
    prog = extract_program(text)
    out = {'parses': False, 'if_then_wellformed': False,
           'known_deontic': False, 'unknown_functions': [],
           'n_statements': 0, 'n_overrides': 0,
           'dangling_override_count': 0, 'program': None}
    if prog is None or not prog['statements']:
        out['error'] = 'no balanced if(...), then(...) statement found'
        return out
    labels = set()
    per_stmt = []
    for idx, (label, span) in enumerate(prog['statements'], 1):
        label = label or f's{idx}'
        labels.add(label)
        v = validate_ir(span)
        per_stmt.append((label, span, v))
        out['unknown_functions'] += v['unknown_functions']
    out['n_statements'] = len(per_stmt)
    out['n_overrides'] = len(prog['overrides'])
    out['dangling_override_count'] = sum(
        1 for a, b in prog['overrides'] if a not in labels or b not in labels)
    out['parses'] = all(v['parses'] for _, _, v in per_stmt)
    out['if_then_wellformed'] = all(
        v['if_then_wellformed'] for _, _, v in per_stmt)
    out['known_deontic'] = all(v['known_deontic'] for _, _, v in per_stmt)
    out['program'] = {'statements': [(l, s, v) for l, s, v in per_stmt],
                      'overrides': prog['overrides']}
    if not out['if_then_wellformed']:
        bad = next((v for _, _, v in per_stmt
                    if not v['if_then_wellformed']), {})
        out['error'] = bad.get('error', 'statement not if/then wellformed')
    return out
