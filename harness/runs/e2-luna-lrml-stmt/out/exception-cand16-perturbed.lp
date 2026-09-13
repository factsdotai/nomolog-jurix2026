% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 715b51c3ac453720
applies :- non_dwelling_building(NonDwellingBuilding).
obligation_met :- landing_door(LandingDoor), not neg_scope_1.
obligation_met :- landing_door(LandingDoor), complies_para_1_21c(LandingDoor).
r1: violation <= non_dwelling_building(NonDwellingBuilding), not obligation_met.
neg_scope_1 :- landing_door(LandingDoor), swings_across_landing(LandingDoor).
