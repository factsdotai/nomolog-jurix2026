% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b75ac730ce89d40c
applies :- building(Building), not neg_scope_1, landing_door(LandingDoor).
obligation_met(LandingDoor) :- landing_door(LandingDoor), not neg_scope_2.
obligation_met(LandingDoor) :- landing_door(LandingDoor), comply_with(LandingDoor, paragraph_1_21c).
r1: violation <= building(Building), not neg_scope_1, landing_door(LandingDoor), not obligation_met(LandingDoor).
neg_scope_1 :- building(Building), dwelling(Building).
neg_scope_2 :- landing_door(LandingDoor), swings_across_landing(LandingDoor).
