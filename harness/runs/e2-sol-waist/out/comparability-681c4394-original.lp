applies :- appliance(A).
r1: violation <= appliance(A), not heat_release_adjustable(A).
heat_release_adjustable(A) :- appliance(A), adjustable_damper(A).
heat_release_adjustable(A) :- appliance(A), thermostatic_control(A).
