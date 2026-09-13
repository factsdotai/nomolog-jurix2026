% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8fbc316c6fba8ced
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(Boiler).
obligation_met(Boiler) :- boiler(Boiler), used_in_calculation(Boiler, output_calculation).
r1: violation <= boiler(Boiler), not obligation_met(Boiler).
