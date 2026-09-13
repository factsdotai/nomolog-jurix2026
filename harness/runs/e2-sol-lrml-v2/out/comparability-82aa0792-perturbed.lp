% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 02f2b78ac48352f5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(boiler), output_calculation(output_calculation).
obligation_met :- used_in_calculation(boiler, output_calculation).
r1: violation <= boiler(boiler), output_calculation(output_calculation), not obligation_met.
