% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8f23e278d3ec8437
applies :- non_dwelling_building(NonDwellingBuilding), landing_door(LandingDoor), not neg_scope_1.
r1: violation <= non_dwelling_building(NonDwellingBuilding), landing_door(LandingDoor), not neg_scope_1, swings_across_landing(LandingDoor).
neg_scope_1 :- landing_door(LandingDoor), complies_with_paragraph_1_21c(LandingDoor).
