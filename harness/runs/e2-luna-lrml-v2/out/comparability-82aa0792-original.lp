% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 41577897a458d39d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(Boiler), output_calculation(OutputCalculation).
obligation_met(Boiler, OutputCalculation) :- boiler(Boiler), output_calculation(OutputCalculation), used_in_calculation(Boiler, OutputCalculation).
r1: violation <= boiler(Boiler), output_calculation(OutputCalculation), not obligation_met(Boiler, OutputCalculation).
