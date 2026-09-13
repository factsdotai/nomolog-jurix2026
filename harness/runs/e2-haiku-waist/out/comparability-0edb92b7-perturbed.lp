applies :- foundation_drainage(D, P).
r1: violation <= foundation_drainage(D, P), not drainage_ok(D).
drainage_ok(D) :- flows_away_from_property(D), not causes_problems_to_sewer_systems(D).
