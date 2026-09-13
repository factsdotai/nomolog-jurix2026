% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6219d1865c8a8f3f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- foundation_drainage_water(FoundationDrainageWater), property(Property), foundation_drainage(FoundationDrainageWater, Property).
obligation_met(FoundationDrainageWater) :- foundation_drainage_water(FoundationDrainageWater), flows_away_from_property(FoundationDrainageWater), not neg_scope_1.
r1: violation <= foundation_drainage_water(FoundationDrainageWater), property(Property), foundation_drainage(FoundationDrainageWater, Property), not obligation_met(FoundationDrainageWater).
neg_scope_1 :- foundation_drainage_water(FoundationDrainageWater), causes_problems_to_sewer_systems(FoundationDrainageWater).
