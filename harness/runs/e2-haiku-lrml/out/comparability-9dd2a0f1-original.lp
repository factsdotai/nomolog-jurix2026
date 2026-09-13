% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a0b9d80222969d89
applies :- mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06.
obligation_met :- auto_shutoff_dampers(outdoor_air_duct), auto_shutoff_dampers(exhaust_air_duct).
r1: violation <= mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06, not obligation_met.
