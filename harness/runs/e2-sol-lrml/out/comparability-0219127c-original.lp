% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b60e7ec1d57e9c2c
applies :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway).
obligation_met(Liftway, PowerSocket) :- power_socket(PowerSocket), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway), not obligation_met(Liftway, PowerSocket).
