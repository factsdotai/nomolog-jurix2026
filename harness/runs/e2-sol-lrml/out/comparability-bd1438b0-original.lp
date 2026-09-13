% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 06b399cc531e11e0
applies :- rooflight(rooflight), uvalue_calculated(rooflight).
obligation_met :- uvalue_horizontal_basis(rooflight).
r1: violation <= rooflight(rooflight), uvalue_calculated(rooflight), not obligation_met.
