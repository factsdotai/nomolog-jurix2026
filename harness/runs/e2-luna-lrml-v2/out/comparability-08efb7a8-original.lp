% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f9eb25b0dbbd9ab0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- calculation(Calculation).
obligation_met(Calculation) :- calculation(Calculation), consistent_methodology(Calculation).
r1: violation <= calculation(Calculation), not obligation_met(Calculation).
