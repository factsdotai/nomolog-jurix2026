% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 09489c205864b145
applies :- non_dwelling_building(NonDwellingBuilding), door(Door).
obligation_met(Door) :- door(Door), not neg_scope_1.
obligation_met(Door) :- door(Door), complies_para_1_21c(Door).
r1: violation <= non_dwelling_building(NonDwellingBuilding), door(Door), not obligation_met(Door).
neg_scope_1 :- door(Door), swings_across_landing(Door).
