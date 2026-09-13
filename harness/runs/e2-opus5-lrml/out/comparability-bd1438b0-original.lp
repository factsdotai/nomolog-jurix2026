% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4dbe924c6c39ffd1
applies :- rooflight(Rooflight).
obligation_met(Rooflight) :- rooflight(Rooflight), uvalue_calculated(Rooflight), uvalue_horizontal_basis(Rooflight).
r1: violation <= rooflight(Rooflight), not obligation_met(Rooflight).
