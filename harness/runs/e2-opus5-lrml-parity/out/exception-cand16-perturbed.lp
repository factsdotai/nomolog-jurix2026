% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0d02fcc2953ed9a1
applies :- building(Building), non_dwelling_building(Building), landing_door(LandingDoor).
obligation_met(LandingDoor) :- landing_door(LandingDoor), not neg_scope_1.
obligation_met(LandingDoor) :- landing_door(LandingDoor), complies_para_1_21c(LandingDoor).
r1: violation <= building(Building), non_dwelling_building(Building), landing_door(LandingDoor), not obligation_met(LandingDoor).
neg_scope_1 :- landing_door(LandingDoor), swings_across_landing(LandingDoor).
