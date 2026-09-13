"""E2 contamination-control set: deterministic, semantics-preserving surface
perturbations of both slices' input texts. No randomness — every applicable
transform applies, so the set is reproducible from the frozen inputs alone.

Transforms (gold encodings and case suites are untouched by construction):
  modal    shall<->must (single pass, no double swap); should -> ought to
  cmp      "at least"->"no less than", "no/not more than"->"at most",
           "does not exceed"->"is no greater than", "more than"->"in excess of"
  conn     unless <-> except where (single pass, no double swap)
  unit     NNNmm / NNN millimetres -> cm when divisible by 10 (incl. ranges);
           N m2 -> N square metres; W/m2 -> watts per square metre

Run from papers/jurix-compilation/:  python3 data/perturb_e2.py
Writes data/e2_perturbed.csv (slice, id, transforms, perturbed_text).
"""
import csv, glob, os, re

def modal(text, tags):
    def swap(m):
        w = m.group(0)
        out = {'shall': 'must', 'must': 'shall', 'should': 'ought to'}[w.lower()]
        return out.capitalize() if w[0].isupper() else out
    new = re.sub(r'\b([Ss]hall|[Mm]ust|[Ss]hould)\b', swap, text)
    if new != text: tags.append('modal')
    return new

def cmp_phrases(text, tags):
    subs = [(r'\bat least\b', 'no less than'), (r'\bno more than\b', 'at most'),
            (r'\bnot more than\b', 'at most'), (r'\bdoes not exceed\b', 'is no greater than'),
            (r'\bmore than\b', 'in excess of')]
    new = text
    for pat, rep in subs:
        new = re.sub(pat, rep, new, flags=re.I)
    if new != text: tags.append('cmp')
    return new

def connectives(text, tags):
    def swap(m):
        w = m.group(0)
        out = 'except where' if w.lower() == 'unless' else 'unless'
        return out.capitalize() if w[0].isupper() else out
    new = re.sub(r'\b[Uu]nless\b|\b[Ee]xcept where\b', swap, text)
    if new != text: tags.append('conn')
    return new

def units(text, tags):
    new = re.sub(r'\b(\d+)-(\d+)\s*mm\b',
                 lambda m: (f"{int(m.group(1))//10}-{int(m.group(2))//10}cm"
                            if int(m.group(1)) % 10 == 0 and int(m.group(2)) % 10 == 0
                            else m.group(0)), text)
    new = re.sub(r'\b(\d+)\s*(mm|millimetres?)\b',
                 lambda m: (f"{int(m.group(1))//10} centimetres"
                            if int(m.group(1)) % 10 == 0 else m.group(0)), new)
    new = re.sub(r'\b(\d+(?:\.\d+)?)\s*m2\b', r'\1 square metres', new)
    new = new.replace('W/m2', 'watts per square metre')
    if new != text: tags.append('unit')
    return new

def perturb(text):
    tags = []
    for f in (modal, cmp_phrases, connectives, units):
        text = f(text, tags)
    return text, (tags or ['none'])

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    paper = os.path.dirname(here)
    rows_out, none_ids = [], []
    for r in csv.DictReader(open(f'{here}/e2_comparability_slice.csv')):
        t, tags = perturb(r['content'])
        rows_out.append(('comparability', r['example_id'][:8], '+'.join(tags), t))
        if tags == ['none']: none_ids.append(r['example_id'][:8])
    for d in sorted(glob.glob(f'{paper}/gold-exception/cand*/sentence.txt')):
        text = open(d).read().split('\nprovenance:')[0].strip().replace('\n', ' ')
        cid = os.path.basename(os.path.dirname(d))
        t, tags = perturb(text)
        rows_out.append(('exception', cid, '+'.join(tags), t))
        if tags == ['none']: none_ids.append(cid)
    with open(f'{here}/e2_perturbed.csv', 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow(['slice', 'id', 'transforms', 'perturbed_text'])
        w.writerows(rows_out)
    print(f"{len(rows_out)} perturbed variants; untransformed: {len(none_ids)} {none_ids}")

if __name__ == '__main__':
    main()
