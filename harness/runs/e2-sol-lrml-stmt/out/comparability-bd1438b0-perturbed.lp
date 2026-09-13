% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0de6888a6be289a3
applies :- rooflight(Rooflight), uvalue_calculated(Rooflight).
obligation_met(Rooflight) :- rooflight(Rooflight), uvalue_horizontal_basis(Rooflight).
r1: violation <= rooflight(Rooflight), uvalue_calculated(Rooflight), not obligation_met(Rooflight).
