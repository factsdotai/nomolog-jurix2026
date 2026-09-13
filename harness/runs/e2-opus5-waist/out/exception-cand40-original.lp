% exception as superior defeasible rule (the defeat idiom)
applies :- major_renovation_residential(B).
r1: violation <= major_renovation_residential(B), parking_space(P, B), not cable_route(P).
r2: exempt <= major_renovation_residential(B), install_cost_fraction(B, F), F > 0.07.
#conflict violation, exempt.
r2 > r1.
