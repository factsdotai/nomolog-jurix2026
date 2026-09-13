% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 14e9aa0ab2f528c3
% term-flattened: nested call -> constant cross_section_area_mech_vent_duct
applies :- mech_vent_duct(MechVentDuct), cross_section_area_mech_vent_duct > 0.06.
obligation_met(MechVentDuct) :- mech_vent_duct(MechVentDuct), auto_shutoff_dampers(MechVentDuct).
r1: violation <= mech_vent_duct(MechVentDuct), cross_section_area_mech_vent_duct > 0.06, not obligation_met(MechVentDuct).
