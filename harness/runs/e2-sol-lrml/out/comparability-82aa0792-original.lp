% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8ba1604965a7c58d
applies :- boiler(Boiler), output_calculation(OutputCalculation).
obligation_met(Boiler, OutputCalculation) :- boiler(Boiler), output_calculation(OutputCalculation), used_in_calculation(Boiler, OutputCalculation).
r1: violation <= boiler(Boiler), output_calculation(OutputCalculation), not obligation_met(Boiler, OutputCalculation).
