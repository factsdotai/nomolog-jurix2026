% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8b1a1ca07215fcc1
applies :- property(Property), foundation_drainage_water(FoundationDrainageWater), foundation_drainage(FoundationDrainageWater, Property).
obligation_met(FoundationDrainageWater) :- foundation_drainage_water(FoundationDrainageWater), flows_away_from_property(FoundationDrainageWater), not neg_scope_1.
r1: violation <= property(Property), foundation_drainage_water(FoundationDrainageWater), foundation_drainage(FoundationDrainageWater, Property), not obligation_met(FoundationDrainageWater).
neg_scope_1 :- foundation_drainage_water(FoundationDrainageWater), causes_problems_to_sewer_systems(FoundationDrainageWater).
