% All boilers used in the calculation, including identical ones.
applies :- output_calculation(C).
r1: violation <= output_calculation(C), boiler(B), not used_in_calculation(B, C).
