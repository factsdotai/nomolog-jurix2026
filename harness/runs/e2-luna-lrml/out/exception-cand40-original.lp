% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c9b08f572d447781
% term-flattened: nested call -> constant install_cost_fraction_building_0_07
applies :- major_renovation_residential(building), parking_space(parking_space, building), install_cost_fraction_building_0_07 <= 0.07.
obligation_met :- cable_route(parking_space).
r1: violation <= major_renovation_residential(building), parking_space(parking_space, building), install_cost_fraction_building_0_07 <= 0.07, not obligation_met.
