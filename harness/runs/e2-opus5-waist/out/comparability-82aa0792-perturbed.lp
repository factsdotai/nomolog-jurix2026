% "including any that are identical" blocks the natural exception: no boiler is
% omitted on grounds of duplication
applies :- output_calculation(C).
r1: violation <= output_calculation(C), boiler(B), not used_in_calculation(B, C).
