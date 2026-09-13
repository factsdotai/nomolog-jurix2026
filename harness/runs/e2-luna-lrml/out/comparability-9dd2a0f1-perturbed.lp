% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 093c40b01c63f6c9
applies :- mech_vent_duct(d), cross_section_area(d, a), a > 0.06.
obligation_met :- auto_shutoff_dampers(d).
r1: violation <= mech_vent_duct(d), cross_section_area(d, a), a > 0.06, not obligation_met.
