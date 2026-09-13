% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 07ccd9923258e94f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- rooflight(Rooflight).
obligation_met(Rooflight) :- rooflight(Rooflight), uvalue_calculated(Rooflight), uvalue_horizontal_basis(Rooflight).
r1: violation <= rooflight(Rooflight), not obligation_met(Rooflight).
