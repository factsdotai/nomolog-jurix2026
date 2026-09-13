% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dac4557199e983f1
applies :- door(Door), building(Building), non_dwelling_building(Building), landing_door(Door, Building).
obligation_met(Door) :- door(Door), not neg_scope_1.
obligation_met(Door) :- door(Door), complies_para_1_21c(Door).
r1: violation <= door(Door), building(Building), non_dwelling_building(Building), landing_door(Door, Building), not obligation_met(Door).
neg_scope_1 :- door(Door), swings_across_landing(Door).
