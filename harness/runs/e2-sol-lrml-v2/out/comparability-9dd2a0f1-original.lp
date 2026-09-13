% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6c2da18fb105253e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- mech_vent_duct(duct), cross_section_area(duct, area), area > 0.06.
obligation_met :- auto_shutoff_dampers(duct).
r1: violation <= mech_vent_duct(duct), cross_section_area(duct, area), area > 0.06, not obligation_met.
