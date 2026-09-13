applies :- rooflight(R).
r1: violation <= rooflight(R), not uvalue_ok(R).
uvalue_ok(R) :- uvalue_calculated(R), uvalue_horizontal_basis(R).
