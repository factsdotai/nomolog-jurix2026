% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 071486849b8c93b1
applies :- mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06.
obligation_met(MechVentDuct) :- auto_shutoff_dampers(AutoShutoffDampers), mech_vent_duct(MechVentDuct), part_of(AutoShutoffDampers, MechVentDuct).
r1: violation <= mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06, not obligation_met(MechVentDuct).
