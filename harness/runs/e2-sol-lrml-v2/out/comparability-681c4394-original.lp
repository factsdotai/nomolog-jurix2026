% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8f8e9c54c7ca6d41
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- appliance(a1).
obligation_met :- adjustable_damper(a1).
obligation_met :- thermostatic_control(a1).
r1: violation <= appliance(a1), not obligation_met.
