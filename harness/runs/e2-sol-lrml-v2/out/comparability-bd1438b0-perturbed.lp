% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 06b399cc531e11e0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- rooflight(rooflight), uvalue_calculated(rooflight).
obligation_met :- uvalue_horizontal_basis(rooflight).
r1: violation <= rooflight(rooflight), uvalue_calculated(rooflight), not obligation_met.
