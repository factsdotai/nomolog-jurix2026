% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 838eb9dbb95f7a38
applies :- boiler(Boiler), output_calculation(OutputCalculation).
obligation_met(Boiler, OutputCalculation) :- boiler(Boiler), output_calculation(OutputCalculation), used_in_calculation(Boiler, OutputCalculation).
r1: violation <= boiler(Boiler), output_calculation(OutputCalculation), not obligation_met(Boiler, OutputCalculation).
