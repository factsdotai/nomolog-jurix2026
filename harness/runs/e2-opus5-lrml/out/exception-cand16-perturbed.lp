% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ae7973fa2b0db74c
applies :- building(Building), non_dwelling_building(Building), landing_door(LandingDoor), not neg_scope_1.
r1: violation <= building(Building), non_dwelling_building(Building), landing_door(LandingDoor), not neg_scope_1, swings_across_landing(LandingDoor).
neg_scope_1 :- landing_door(LandingDoor), complies_para_1_21c(LandingDoor).
