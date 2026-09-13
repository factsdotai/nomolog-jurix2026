% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c7cbb71aed46675b
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06.
obligation_met(MechVentDuct) :- mech_vent_duct(MechVentDuct), auto_shutoff_dampers(MechVentDuct).
r1: violation <= mech_vent_duct(MechVentDuct), cross_section_area(MechVentDuct, MechVentDuctCrossSectionArea), MechVentDuctCrossSectionArea > 0.06, not obligation_met(MechVentDuct).
