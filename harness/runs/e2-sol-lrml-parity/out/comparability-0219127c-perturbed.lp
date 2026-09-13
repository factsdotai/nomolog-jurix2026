% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b6b7c0ac0ec7aa77
applies :- liftway(liftway).
obligation_met :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), close_to(PowerSocket, liftway).
r1: violation <= liftway(liftway), not obligation_met.
