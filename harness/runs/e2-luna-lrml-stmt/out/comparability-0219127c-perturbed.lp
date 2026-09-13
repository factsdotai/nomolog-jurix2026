% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 111bd1ebe86686dc
applies :- power_socket(PowerSocket), liftway(Liftway), suitable_for_powering(PowerSocket, lifting_device).
obligation_met(Liftway, PowerSocket) :- power_socket(PowerSocket), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= power_socket(PowerSocket), liftway(Liftway), suitable_for_powering(PowerSocket, lifting_device), not obligation_met(Liftway, PowerSocket).
