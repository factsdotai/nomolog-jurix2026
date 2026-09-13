% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1d36df62bd5e1933
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height(ApplianceSwitch, ApplianceSwitchMountingHeight), ApplianceSwitchMountingHeight >= 400, ApplianceSwitchMountingHeight <= 1200.
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
