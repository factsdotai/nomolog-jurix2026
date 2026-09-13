% The exception excuses only the too-high branch: a switch below 400mm is a violation
% regardless of appliance needs (r3 superior to r2 only).
applies :- appliance_switch(S).
r1: violation <= appliance_switch(S), mounting_height(S, H), H < 400.
r2: violation <= appliance_switch(S), mounting_height(S, H), H > 1200.
r3: exempt <= appliance_switch(S), higher_level_needed(S).
#conflict violation, exempt.
r3 > r2.
