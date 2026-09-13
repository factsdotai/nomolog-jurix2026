% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1d77e1be467cc648
applies :- non_dwelling_building(NonDwellingBuilding), landing_door(LandingDoor), swings_across_landing(LandingDoor).
obligation_met(LandingDoor) :- landing_door(LandingDoor), not neg_scope_1.
obligation_met(LandingDoor) :- landing_door(LandingDoor), complies_para_1_21c(LandingDoor).
r1: violation <= non_dwelling_building(NonDwellingBuilding), landing_door(LandingDoor), swings_across_landing(LandingDoor), not obligation_met(LandingDoor).
neg_scope_1 :- landing_door(LandingDoor), swings_across_landing(LandingDoor).
