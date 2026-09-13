% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4817e864f9865987
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- appliance_switch(ApplianceSwitch), permanently_wired(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), height(ApplianceSwitch, ApplianceSwitchHeight), ApplianceSwitchHeight >= 400, ApplianceSwitchHeight <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), permanently_wired(ApplianceSwitch), not obligation_met(ApplianceSwitch).
r2: exempt_r2 <= appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
#conflict violation, exempt_r2.
r2 > r1.
