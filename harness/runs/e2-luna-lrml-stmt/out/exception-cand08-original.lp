% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e162ae1ccf335643
% term-flattened: nested call -> constant mounting_height_appliance_switch
% term-flattened: nested call -> constant mounting_height_appliance_switch
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height_appliance_switch >= 400, mounting_height_appliance_switch <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
