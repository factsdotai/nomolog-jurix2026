% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 39dcdf911a3f1b47
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant mounting_height_switch
% term-flattened: nested call -> constant mounting_height_switch
applies :- appliance_switch(switch).
obligation_met :- mounting_height_switch >= 400, mounting_height_switch <= 1200.
r1: violation <= appliance_switch(switch), not obligation_met.
r2: exempt_r2 <= appliance_switch(switch), higher_level_needed(switch).
#conflict violation, exempt_r2.
r2 > r1.
