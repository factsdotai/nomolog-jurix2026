% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: eec61b891561d5e8
applies :- foundation_drainage(foundation_drainage_water, property).
obligation_met :- flows_away_from_property(foundation_drainage_water), not neg_scope_1.
r1: violation <= foundation_drainage(foundation_drainage_water, property), not obligation_met.
neg_scope_1 :- causes_problems_to_sewer_systems(foundation_drainage_water).
