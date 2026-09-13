applies :- mech_vent_duct(D), cross_section_area(D, A), A > 0.06.
r1: violation <= mech_vent_duct(D), cross_section_area(D, A), A > 0.06, not dampers_ok(D).
dampers_ok(D) :- auto_shutoff_dampers(D).
