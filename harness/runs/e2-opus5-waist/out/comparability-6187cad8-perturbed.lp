% permission for boost controls does not defeat the base obligation
applies :- continuous_fan(F).
r1: violation <= continuous_fan(F), not operates_without_intervention(F).
r2: exempt <= continuous_fan(F), manual_boost_control(F), operates_without_intervention(F).
#conflict violation, exempt.
r2 > r1.
