% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 44331de6ed08c499
applies :- output_calculation(OutputCalculation).
obligation_met(OutputCalculation) :- boiler(Boiler), output_calculation(OutputCalculation), used_in_calculation(Boiler, OutputCalculation).
r1: violation <= output_calculation(OutputCalculation), not obligation_met(OutputCalculation).
