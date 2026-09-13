% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8fbc316c6fba8ced
applies :- boiler(Boiler).
obligation_met(Boiler) :- boiler(Boiler), used_in_calculation(Boiler, output_calculation).
r1: violation <= boiler(Boiler), not obligation_met(Boiler).
