% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6c058b71421bc206
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- appliance_switch(switch), mounting_height(switch, height).
obligation_met_r1 :- height >= 400, height <= 1200.
r1: violation <= appliance_switch(switch), mounting_height(switch, height), not obligation_met_r1.
obligation_met_r2 :- height > 1200.
r2: violation <= appliance_switch(switch), higher_level_needed(switch), mounting_height(switch, height), not obligation_met_r2.
r3: exempt_r2 <= appliance_switch(switch), higher_level_needed(switch), mounting_height(switch, height).
#conflict violation, exempt_r2.
r3 > r1.
