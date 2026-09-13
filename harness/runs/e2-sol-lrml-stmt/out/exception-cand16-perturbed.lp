% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dab0dd6d825a9cc6
applies :- corridor_door(door), non_dwelling_building(building), landing_door(door, building).
obligation_met :- not neg_scope_1.
obligation_met :- complies_para_1_21c(door).
r1: violation <= corridor_door(door), non_dwelling_building(building), landing_door(door, building), not obligation_met.
neg_scope_1 :- swings_across_landing(door).
