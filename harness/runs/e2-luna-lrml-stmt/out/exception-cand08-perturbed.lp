% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 921f01b0d09b75eb
% term-flattened: nested call -> constant mounting_height_appliance_switch_400_mm
% term-flattened: nested call -> constant mounting_height_appliance_switch_400_mm
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height_appliance_switch_400_mm >= 400, mounting_height_appliance_switch_400_mm <= 1200.
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
