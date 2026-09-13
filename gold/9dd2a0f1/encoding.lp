% Duct cross-section > 0.06 m2 => automatic shutoff dampers on outdoor/exhaust ducts.
applies :- mech_vent_duct(D), cross_section_area(D, A), A > 0.06.
r1: violation <= mech_vent_duct(D), cross_section_area(D, A), A > 0.06, not auto_shutoff_dampers(D).
