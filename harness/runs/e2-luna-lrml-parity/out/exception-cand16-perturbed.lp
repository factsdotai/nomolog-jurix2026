% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3db3c5c61e3eba3c
applies :- non_dwelling_building(NonDwellingBuilding), corridor_door(CorridorDoor).
obligation_met(CorridorDoor) :- corridor_door(CorridorDoor), not neg_scope_1.
obligation_met(CorridorDoor) :- corridor_door(CorridorDoor), complies_para_1_21c(CorridorDoor).
r1: violation <= non_dwelling_building(NonDwellingBuilding), corridor_door(CorridorDoor), not obligation_met(CorridorDoor).
neg_scope_1 :- corridor_door(CorridorDoor), swings_across_landing(CorridorDoor).
