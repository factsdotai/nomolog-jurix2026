% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f2969f519e63771a
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height(ApplianceSwitch, ApplianceSwitchMountingHeight), ApplianceSwitchMountingHeight >= 400, ApplianceSwitchMountingHeight <= 1200.
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
