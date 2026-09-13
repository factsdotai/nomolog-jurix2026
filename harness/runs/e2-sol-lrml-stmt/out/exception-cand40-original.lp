% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bb43ae1122b5ae0f
% term-flattened: nested call -> constant install_cost_fraction_building
applies :- major_renovation_residential(building).
obligation_met :- install_cost_fraction_building > 0.07.
obligation_met :- parking_space(parking_space, building), cable_route(parking_space).
r1: violation <= major_renovation_residential(building), not obligation_met.
