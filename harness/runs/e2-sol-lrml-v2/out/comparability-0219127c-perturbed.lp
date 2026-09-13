% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b60e7ec1d57e9c2c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway).
obligation_met(Liftway, PowerSocket) :- power_socket(PowerSocket), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway), not obligation_met(Liftway, PowerSocket).
