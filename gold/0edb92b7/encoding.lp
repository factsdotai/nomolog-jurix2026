% Foundation drainage water flows away from the property without causing
% problems to waste/storm water systems. open-texture: both leaves.
applies :- foundation_drainage(D, P).
r1: violation <= foundation_drainage(D, P), not flows_away_from_property(D).
r2: violation <= foundation_drainage(D, P), causes_problems_to_sewer_systems(D).
