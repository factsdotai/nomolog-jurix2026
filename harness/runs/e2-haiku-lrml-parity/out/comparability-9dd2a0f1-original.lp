% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 66cf45cf439c28af
applies :- mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06.
obligation_met(MechVentDuct) :- mech_vent_duct(MechVentDuct), auto_shutoff_dampers(MechVentDuct).
r1: violation <= mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06, not obligation_met(MechVentDuct).
