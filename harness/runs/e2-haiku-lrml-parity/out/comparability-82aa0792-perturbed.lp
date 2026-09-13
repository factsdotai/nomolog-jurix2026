% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 65b28a3643855aef
applies :- boiler(Boiler).
obligation_met(Boiler) :- boiler(Boiler), used_in_calculation(Boiler, output_calculation).
r1: violation <= boiler(Boiler), not obligation_met(Boiler).
