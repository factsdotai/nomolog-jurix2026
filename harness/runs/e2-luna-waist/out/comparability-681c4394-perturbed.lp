applies :- appliance(A).
r1: violation <= appliance(A), not method_ok(A).
method_ok(A) :- adjustable_damper(A).
method_ok(A) :- thermostatic_control(A).
