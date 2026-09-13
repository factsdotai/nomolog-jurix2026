% Rooflight U-values calculated on a horizontal-position basis.
applies :- rooflight(R).
r1: violation <= rooflight(R), uvalue_calculated(R), not uvalue_horizontal_basis(R).
