% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cd2631dc0bdfcf14
applies :- dwelling(d), exposed_facade(f1, d), exposed_facade(f2, d), f1 != f2.
obligation_met :- similar_ventilator_area(f1, f2).
r1: violation <= dwelling(d), exposed_facade(f1, d), exposed_facade(f2, d), f1 != f2, not obligation_met.
