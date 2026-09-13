"""The fragment's safety rule, shared by the generation pipeline and the
translators. Enforces nomolog-spec.md §1 Safety: every variable in a rule
head, negative literal, or comparison must occur in a positive body atom of
the same rule. The reference evaluator assumes this; unsafe generated
programs must be a scoring event, not a crash.

(Extracted verbatim from the generation runner on 2026-08-26 so the public
verification package does not depend on the gated pipeline.)"""
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import waist_eval                                       # noqa: E402


def safety_check(prog):
    """Raise waist_eval.FragmentError if any rule is unsafe."""
    def term_vars(t):
        if t[0] == 'var':
            return {t[1]}
        if t[0] == 'scaled':
            return {t[2]}
        return set()
    for head, body, kind, rid in prog['rules']:
        pos = set()
        for l in body:
            if l[0] == 'pos':
                for t in l[2]:
                    pos |= term_vars(t)
        need = set()
        for t in head[1]:
            need |= term_vars(t)
        for l in body:
            if l[0] == 'neg':
                for t in l[2]:
                    need |= term_vars(t)
            elif l[0] == 'cmp':
                need |= term_vars(l[2]) | term_vars(l[3])
        unbound = need - pos
        if unbound:
            raise waist_eval.FragmentError(
                f"unsafe rule ({head[0]}): variable(s) "
                f"{', '.join(sorted(unbound))} not bound by a positive "
                "body atom")
