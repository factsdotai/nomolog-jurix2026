% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9d7749f167cf2d52
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), close_to(PowerSocket, liftway).
obligation_met(PowerSocket) :- power_socket(PowerSocket).
r1: violation <= power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), close_to(PowerSocket, liftway), not obligation_met(PowerSocket).
