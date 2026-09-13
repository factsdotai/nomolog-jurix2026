% exception as superior defeasible rule (the defeat idiom)
applies :- appliance_switch(S).
r1: violation <= appliance_switch(S), mounting_height(S, H), H < 400.
r2: violation <= appliance_switch(S), mounting_height(S, H), H > 1200.
r3: exempt <= appliance_switch(S), higher_level_needed(S).
#conflict violation, exempt.
r3 > r1.
r3 > r2.
