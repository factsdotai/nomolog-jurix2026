applies :- continuous_fan(F).
r1: violation <= continuous_fan(F), not operates_without_intervention(F).
r2: exempt <= continuous_fan(F), manual_boost_control(F).
r3: exempt <= continuous_fan(F), automatic_boost_control(F).
#conflict violation, exempt.
r2 > r1.
r3 > r1.
