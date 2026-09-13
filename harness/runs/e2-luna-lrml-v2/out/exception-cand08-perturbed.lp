% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 05d82cdd7f36057d
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height(ApplianceSwitch, ApplianceSwitchMountingHeight), ApplianceSwitchMountingHeight >= 400, ApplianceSwitchMountingHeight <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
r2: exempt_r2 <= appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
#conflict violation, exempt_r2.
r2 > r1.
