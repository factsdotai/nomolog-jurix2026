% "including any that are identical" adds no separate condition: no boiler may be omitted
applies :- output_calculation(C).
r1: violation <= output_calculation(C), boiler(B), not used_in_calculation(B, C).
