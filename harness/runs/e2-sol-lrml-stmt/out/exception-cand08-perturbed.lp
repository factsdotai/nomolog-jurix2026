% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4d2f48a84a11fca0
applies :- appliance_switch(Switch).
obligation_met(Switch) :- higher_level_needed(Switch).
obligation_met(Switch) :- mounting_height(Switch, SwitchMountingHeight), SwitchMountingHeight >= 400, SwitchMountingHeight <= 1200.
r1: violation <= appliance_switch(Switch), not obligation_met(Switch).
