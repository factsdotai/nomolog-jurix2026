% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 467df7b23f4b7322
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height(ApplianceSwitch, ApplianceSwitchMountingHeight), ApplianceSwitchMountingHeight >= 400, ApplianceSwitchMountingHeight <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
