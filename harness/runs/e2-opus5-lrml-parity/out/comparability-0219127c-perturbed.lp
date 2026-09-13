% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cd0cc04bef0945f3
applies :- liftway(Liftway).
obligation_met(Liftway) :- power_socket(PowerSocket), liftway(Liftway), close_to(PowerSocket, Liftway), suitable_for_powering(PowerSocket, lifting_device).
r1: violation <= liftway(Liftway), not obligation_met(Liftway).
