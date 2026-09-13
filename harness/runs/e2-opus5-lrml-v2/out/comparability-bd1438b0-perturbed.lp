% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e2be52d78e8ddc26
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- rooflight(Rooflight).
obligation_met(Rooflight) :- rooflight(Rooflight), uvalue_calculated_horizontal_basis(Rooflight).
r1: violation <= rooflight(Rooflight), not obligation_met(Rooflight).
