% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c5edb15669be18b9
applies :- liftway(Liftway).
obligation_met(Liftway) :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= liftway(Liftway), not obligation_met(Liftway).
