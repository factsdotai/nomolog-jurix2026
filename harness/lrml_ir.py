"""Parser for the LRML compacted bracket IR (lrml-target.md §2). Stdlib only.

Node shapes:  ('call', fname, [args])   fname normalized per policy N1
              ('operand', text)         entity / attr / value, raw text

`extract_ir` pulls the first well-formed `if( ... ), then( ... )` span out of a
raw model response (Fuchs et al.'s extraction criterion is the presence of
`if(`); `parse_ir` builds the tree; `validate_ir` produces the structural
validity metrics reported alongside behavioral scores (lrml-target.md §5).
"""
import re

DEONTICS = ('obligation', 'permission', 'prohibition')

CORE_FNS = {
    'and', 'or', 'not', 'exist', 'is', 'has',
    'greater_than_equal', 'less_than_equal', 'greater_than', 'less_than',
    'equal', 'not_equal', 'exceed', 'at_least', 'at_most', 'min', 'max',
    'more_than',
    'as_per', 'comply_with', 'within', 'include', 'part_of',
    'loop', 'for_each',
    'if', 'then',
}


class IRError(Exception):
    pass


def norm_name(s):
    """Policy N1: split camelCase, lowercase, non-alnum -> '_'."""
    s = re.sub(r'(?<=[a-z0-9])(?=[A-Z])', ' ', s.strip())
    s = re.sub(r'[^A-Za-z0-9]+', '_', s.lower()).strip('_')
    return s


def extract_ir(text):
    """Return the first balanced `if(...), then(...)` span, or None."""
    for m in re.finditer(r'if\s*\(', text):
        i = _balance(text, m.start())
        if i is None:
            continue
        rest = text[i:]
        m2 = re.match(r'\s*,\s*then\s*\(', rest)
        if not m2:
            continue
        j = _balance(rest, m2.end() - len('('))
        if j is None:
            # tolerate a truncated final ')' — charitable, logged upstream
            continue
        return text[m.start():i + j]
    return None


def _balance(text, open_idx):
    """text[open_idx:] starts at or before a '('; return index one past the
    matching close, or None."""
    depth = 0
    started = False
    for k in range(open_idx, len(text)):
        if text[k] == '(':
            depth += 1
            started = True
        elif text[k] == ')':
            depth -= 1
            if started and depth == 0:
                return k + 1
            if depth < 0:
                return None
    return None


def parse_ir(text):
    """Parse a full IR string into [('call','if',[cond]), ('call','then',[d])]."""
    args, pos = _parse_args(text, 0, top=True)
    if pos != len(text.strip()) and text[pos:].strip():
        raise IRError(f"trailing content at {pos}: {text[pos:pos+40]!r}")
    return args


def _parse_args(text, pos, top=False):
    args = []
    n = len(text)
    while True:
        # scan one expression
        start = pos
        depth_word = ''
        while pos < n and text[pos] not in '(),':
            depth_word += text[pos]
            pos += 1
        word = depth_word.strip()
        if pos < n and text[pos] == '(':
            if not word:
                raise IRError(f"bare '(' at {pos}")
            inner, pos = _parse_args(text, pos + 1)
            if pos >= n or text[pos] != ')':
                raise IRError(f"unbalanced call {word!r}")
            pos += 1
            args.append(('call', norm_name(word), inner))
        elif word:
            args.append(('operand', word))
        # delimiter handling
        while pos < n and text[pos] in ' \t\r\n':
            pos += 1
        if pos < n and text[pos] == ',':
            pos += 1
            continue
        if pos < n and text[pos] == ')' and not top:
            return args, pos
        if pos >= n or top:
            # at top level a stray ')' is an error caught by caller
            if pos < n and text[pos] == ')':
                raise IRError("unbalanced ')' at top level")
            return args, pos


def validate_ir(text):
    """Structural validity metrics (lrml-target.md §5). Returns dict; 'tree'
    holds the parsed [if, then] pair when well-formed."""
    out = {'parses': False, 'if_then_wellformed': False,
           'known_deontic': False, 'unknown_functions': [], 'tree': None}
    try:
        args = parse_ir(text)
    except IRError as e:
        out['error'] = str(e)
        return out
    out['parses'] = True
    if (len(args) == 2
            and args[0][0] == 'call' and args[0][1] == 'if'
            and args[1][0] == 'call' and args[1][1] == 'then'
            and len(args[1][2]) >= 1):
        out['if_then_wellformed'] = True
        head = args[1][2][0]
        if head[0] == 'call' and head[1] in DEONTICS:
            out['known_deontic'] = True
        out['tree'] = args

        def walk(node):
            if node[0] == 'call':
                if node[1] not in CORE_FNS and node[1] not in DEONTICS:
                    out['unknown_functions'].append(node[1])
                for a in node[2]:
                    walk(a)
        for a in args:
            walk(a)
    return out
