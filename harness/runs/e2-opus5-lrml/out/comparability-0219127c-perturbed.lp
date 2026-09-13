% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b8e032885de8847c
applies :- liftway(Liftway).
obligation_met(Liftway) :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= liftway(Liftway), not obligation_met(Liftway).
