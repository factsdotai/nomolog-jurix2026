% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1fbfddc9bfe952ee
applies :- foundation_drainage_water(FoundationDrainageWater).
obligation_met(FoundationDrainageWater) :- foundation_drainage_water(FoundationDrainageWater), flows_away_from_property(FoundationDrainageWater), not neg_scope_1.
r1: violation <= foundation_drainage_water(FoundationDrainageWater), not obligation_met(FoundationDrainageWater).
neg_scope_1 :- foundation_drainage_water(FoundationDrainageWater), causes_problems_to_sewer_systems(FoundationDrainageWater).
