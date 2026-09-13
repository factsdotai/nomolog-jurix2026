% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5d3a693a3a781f2c
applies :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), close_to(PowerSocket, liftway).
obligation_met(PowerSocket) :- power_socket(PowerSocket).
r1: violation <= power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), close_to(PowerSocket, liftway), not obligation_met(PowerSocket).
