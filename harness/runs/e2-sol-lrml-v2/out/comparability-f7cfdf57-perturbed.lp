% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a8a83af25de92316
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- passageway(p1), level_change_feature(f1, p1).
obligation_met :- clearly_indicated(f1).
r1: violation <= passageway(p1), level_change_feature(f1, p1), not obligation_met.
