% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 39e4acbed36e5f44
applies :- lift(Lift), building(Building), fire_in_building(Building), lift_used(Lift, Building).
obligation_met(Lift) :- lift(Lift), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
r1: violation <= lift(Lift), building(Building), fire_in_building(Building), lift_used(Lift, Building), not obligation_met(Lift).
