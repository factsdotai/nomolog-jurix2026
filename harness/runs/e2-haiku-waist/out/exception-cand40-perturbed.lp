applies :- major_renovation_residential(B), parking_space(P, B).
r1: violation <= major_renovation_residential(B), parking_space(P, B), not cable_route_ok(B).
cable_route_ok(B) :- cable_route_installed(B).
cable_route_ok(B) :- cost_exceeds_threshold(B).
cost_exceeds_threshold(B) :- install_cost_fraction(B, F), F > 0.07.
