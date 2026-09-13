% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8b3b41c549eb91b2
applies :- appliance_switch(ApplianceSwitch), not neg_scope_1.
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height(ApplianceSwitch, ApplianceSwitchMountingHeight), ApplianceSwitchMountingHeight >= 400, ApplianceSwitchMountingHeight <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), not neg_scope_1, not obligation_met(ApplianceSwitch).
neg_scope_1 :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
