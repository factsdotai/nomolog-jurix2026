applies :- appliance(A).
r1: violation <= appliance(A), not heat_release_ok(A).
heat_release_ok(A) :- adjustable_damper(A).
heat_release_ok(A) :- thermostatic_control(A).
