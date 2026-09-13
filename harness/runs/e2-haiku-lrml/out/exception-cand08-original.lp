% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d3aab97f6d583758
% term-flattened: nested call -> constant mounting_height_appliance_switch
% term-flattened: nested call -> constant mounting_height_appliance_switch
applies :- appliance_switch(ApplianceSwitch), not neg_scope_1.
obligation_met :- mounting_height_appliance_switch >= 400, mounting_height_appliance_switch <= 1200.
r1: violation <= appliance_switch(ApplianceSwitch), not neg_scope_1, not obligation_met.
neg_scope_1 :- appliance_switch(ApplianceSwitch), higher_level_needed(ApplianceSwitch).
