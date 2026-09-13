% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: eb9e1ec2a37a27a3
% term-flattened: nested call -> constant mounting_height_appliance_switch
% term-flattened: nested call -> constant mounting_height_appliance_switch
applies :- appliance_switch(ApplianceSwitch).
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), mounting_height_appliance_switch >= 400, mounting_height_appliance_switch <= 1200.
obligation_met(ApplianceSwitch) :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
r1: violation <= appliance_switch(ApplianceSwitch), not obligation_met(ApplianceSwitch).
