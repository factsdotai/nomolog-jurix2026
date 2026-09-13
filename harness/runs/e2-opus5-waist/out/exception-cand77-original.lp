applies :- phased_evacuation_building(B), storey(S, B), not top_storey(S).
r1: violation <= phased_evacuation_building(B), storey(S, B), not top_storey(S), not approach_ok(S).
approach_ok(S) :- protected_lobby(S).
approach_ok(S) :- protected_corridor(S).
