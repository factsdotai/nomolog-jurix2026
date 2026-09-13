"""E2 sample freezer — reproducible sampling from CODE-ACCORD (commit 45f0830).

Produces:
  e2_comparability_slice.csv   60 sentences from the annotated 862, stratified by
                               source document with threshold-relation oversampling
  e2_exception_candidates.csv  80 strong-marker exception passages from the English
                               raw sentence stage, for manual curation to ~20

Run from the CODE-ACCORD repo root:  python3 sample_e2.py
Seed is frozen (20260804). Requires only stdlib.
"""
import csv, re, ast, random, glob, os
from collections import Counter, defaultdict

SEED = 20260804
random.seed(SEED)

with open('annotated_data/entities/all.csv') as f:
    sents = list(csv.DictReader(f))
norm = lambda s: re.sub(r'\s+', ' ', s.strip().lower())
rel_by_content = defaultdict(set)
with open('annotated_data/relations/all.csv') as f:
    for r in csv.DictReader(f):
        rel_by_content[norm(r['content'])].add(r['relation_type'])

THRESH = {'greater-equal', 'less-equal', 'greater', 'less', 'equal'}
for s in sents:
    doc = ast.literal_eval(s['metadata'])['ID']
    s['doc'] = '_'.join(doc.split('_')[1:])
    s['country'] = doc.split('_')[1]
    rels = rel_by_content.get(norm(s['content']), set())
    s['has_thresh'] = bool(rels & THRESH)
    s['has_necessity'] = 'necessity' in rels

by_doc = defaultdict(list)
for s in sents:
    by_doc[s['doc']].append(s)
docs = sorted(by_doc, key=lambda d: -len(by_doc[d]))
big = [d for d in docs if len(by_doc[d]) >= 13]
total_big = sum(len(by_doc[x]) for x in big)
alloc = {d: max(1, round(60 * len(by_doc[d]) / total_big)) for d in big}

sample = []
for d in big:
    pool = by_doc[d]
    th = [s for s in pool if s['has_thresh']]
    rest = [s for s in pool if not s['has_thresh']]
    k = min(alloc[d], len(pool))
    kt = min(len(th), max(1, k // 3))
    sample += random.sample(th, kt) + random.sample(rest, k - kt)
sample = sample[:60]

with open('e2_comparability_slice.csv', 'w', newline='') as f:
    w = csv.writer(f)
    w.writerow(['example_id', 'doc', 'country', 'has_thresh', 'has_necessity', 'content'])
    for s in sorted(sample, key=lambda x: x['example_id']):
        w.writerow([s['example_id'], s['doc'], s['country'],
                    s['has_thresh'], s['has_necessity'], s['content']])

EXC_STRONG = re.compile(r'\b(except|unless|does not apply|notwithstanding|need not)\b', re.I)
cands = []
for fp in sorted(glob.glob(
        "English Regulations/TXT and CSV/3-All Sentences - Raw Text Data/**/*.txt",
        recursive=True)):
    lines = [l.strip() for l in open(fp, encoding='utf-8', errors='ignore')]
    for i, ln in enumerate(lines):
        if len(ln) > 45 and EXC_STRONG.search(ln) and not ln.isupper():
            ctx = ' | '.join(x for x in lines[i + 1:i + 3] if x)[:200]
            cands.append((os.path.basename(fp).replace('Sentences-Text-', '')
                          .replace('-Content.txt', ''), i + 1, ln[:300], ctx))
random.shuffle(cands)
with open('e2_exception_candidates.csv', 'w', newline='') as f:
    w = csv.writer(f)
    w.writerow(['source_doc', 'line', 'sentence', 'following_context'])
    for c in cands[:80]:
        w.writerow(c)

print(f"comparability slice: {len(sample)} | exception candidates: {min(80, len(cands))} of {len(cands)}")
