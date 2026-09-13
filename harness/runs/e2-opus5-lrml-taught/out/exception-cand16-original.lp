% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cd9cc4c60aaed60d
applies :- building(Building), not neg_scope_1, door(Door), landing_door(Door, Building).
r1: violation <= building(Building), not neg_scope_1, door(Door), landing_door(Door, Building), swings_across_landing(Door), not neg_scope_2.
neg_scope_1 :- building(Building), dwelling(Building).
neg_scope_2 :- door(Door), complies_with(Door, paragraph_1_21c).
