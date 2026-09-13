% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6c2da18fb105253e
applies :- mech_vent_duct(duct), cross_section_area(duct, area), area > 0.06.
obligation_met :- auto_shutoff_dampers(duct).
r1: violation <= mech_vent_duct(duct), cross_section_area(duct, area), area > 0.06, not obligation_met.
