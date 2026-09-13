"""Exemplar-pool freezer — seed-locked draw from CODE-ACCORD (45f0830),
disjoint from the frozen E2 slices (exemplars must never appear in scoring).

Run from the CODE-ACCORD repo root with this repo's data/ dir on argv:
  python3 sample_exemplars.py /path/to/normative-hourglass/papers/jurix-compilation/data

Produces e2_exemplar_pool.csv there: 40 candidates, doc-stratified with
threshold oversampling (same shape as the comparability slice so exemplars
match the eval distribution). Authoring picks from the top; EXEMPLARS.txt
freezes the chosen ordered subset (see harness/exemplars/README.md).
"""
import ast
import csv
import random
import re
import sys
from collections import defaultdict

SEED = 20260809
POOL = 40
random.seed(SEED)

out_dir = sys.argv[1] if len(sys.argv) > 1 else '.'

with open('annotated_data/entities/all.csv') as f:
    sents = list(csv.DictReader(f))
norm = lambda s: re.sub(r'\s+', ' ', s.strip().lower())
rel_by_content = defaultdict(set)
with open('annotated_data/relations/all.csv') as f:
    for r in csv.DictReader(f):
        rel_by_content[norm(r['content'])].add(r['relation_type'])

with open(f'{out_dir}/e2_comparability_slice.csv') as f:
    frozen = {r['example_id'] for r in csv.DictReader(f)}

THRESH = {'greater-equal', 'less-equal', 'greater', 'less', 'equal'}
for s in sents:
    doc = ast.literal_eval(s['metadata'])['ID']
    s['doc'] = '_'.join(doc.split('_')[1:])
    rels = rel_by_content.get(norm(s['content']), set())
    s['has_thresh'] = bool(rels & THRESH)

pool = [s for s in sents if s['example_id'] not in frozen
        and len(s['content']) > 40]
by_doc = defaultdict(list)
for s in pool:
    by_doc[s['doc']].append(s)
docs = sorted(by_doc, key=lambda d: -len(by_doc[d]))
big = [d for d in docs if len(by_doc[d]) >= 13]
total = sum(len(by_doc[d]) for d in big)
sample = []
for d in big:
    k = max(1, round(POOL * len(by_doc[d]) / total))
    th = [s for s in by_doc[d] if s['has_thresh']]
    rest = [s for s in by_doc[d] if not s['has_thresh']]
    kt = min(len(th), max(1, k // 3))
    sample += random.sample(th, kt) + random.sample(rest, min(k - kt, len(rest)))
sample = sample[:POOL]

with open(f'{out_dir}/e2_exemplar_pool.csv', 'w', newline='') as f:
    w = csv.writer(f)
    w.writerow(['example_id', 'doc', 'has_thresh', 'content'])
    for s in sorted(sample, key=lambda x: x['example_id']):
        w.writerow([s['example_id'], s['doc'], s['has_thresh'], s['content']])
print(f"exemplar pool: {len(sample)} (seed {SEED}, disjoint from slice: "
      f"{not any(s['example_id'] in frozen for s in sample)})")
