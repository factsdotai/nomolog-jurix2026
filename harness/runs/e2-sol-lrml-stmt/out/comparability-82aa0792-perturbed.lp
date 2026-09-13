% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b7c4f18f19d35366
applies :- output_calculation(OutputCalculation), boiler(Boiler).
obligation_met(Boiler, OutputCalculation) :- boiler(Boiler), output_calculation(OutputCalculation), used_in_calculation(Boiler, OutputCalculation).
r1: violation <= output_calculation(OutputCalculation), boiler(Boiler), not obligation_met(Boiler, OutputCalculation).
