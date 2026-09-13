% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4ac7239b12b3fbd6
applies :- major_renovation_residential(b), parking_space(p, b), install_cost_fraction(b, f), f <= 0.07.
obligation_met :- cable_route(p).
r1: violation <= major_renovation_residential(b), parking_space(p, b), install_cost_fraction(b, f), f <= 0.07, not obligation_met.
