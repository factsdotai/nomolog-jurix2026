% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8b16d8c6dec7eeb4
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant cross_section_area_duct
applies :- mech_vent_duct(duct), cross_section_area_duct > 0.06.
obligation_met :- auto_shutoff_dampers(duct).
r1: violation <= mech_vent_duct(duct), cross_section_area_duct > 0.06, not obligation_met.
