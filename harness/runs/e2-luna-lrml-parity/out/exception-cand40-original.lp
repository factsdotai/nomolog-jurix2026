% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 68b2a1d7d7fbecfa
% term-flattened: nested call -> constant install_cost_fraction_building_renovatio
applies :- major_renovation_residential(building).
obligation_met :- parking_space(parking_space, building), cable_route(parking_space).
obligation_met :- parking_space(parking_space, building), install_cost_fraction_building_renovatio > 0.07.
r1: violation <= major_renovation_residential(building), not obligation_met.
