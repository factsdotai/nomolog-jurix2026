% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 386d0902370a07c9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(b), output_calculation(c).
obligation_met :- used_in_calculation(b, c).
r1: violation <= boiler(b), output_calculation(c), not obligation_met.
