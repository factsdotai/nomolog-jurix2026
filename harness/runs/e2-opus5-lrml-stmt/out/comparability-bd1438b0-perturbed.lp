% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ffe9272ce3c0f5e6
applies :- rooflight(Rooflight), uvalue_calculated(Rooflight).
obligation_met(Rooflight) :- rooflight(Rooflight), uvalue_horizontal_basis(Rooflight).
r1: violation <= rooflight(Rooflight), uvalue_calculated(Rooflight), not obligation_met(Rooflight).
