% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f983c73df46625f6
applies :- foundation_drainage_water(FoundationDrainageWater), foundation_drainage(FoundationDrainageWater, property).
obligation_met(FoundationDrainageWater) :- foundation_drainage_water(FoundationDrainageWater), flows_away_from_property(FoundationDrainageWater), not neg_scope_1.
r1: violation <= foundation_drainage_water(FoundationDrainageWater), foundation_drainage(FoundationDrainageWater, property), not obligation_met(FoundationDrainageWater).
neg_scope_1 :- foundation_drainage_water(FoundationDrainageWater), causes_problems_to_sewer_systems(FoundationDrainageWater).
