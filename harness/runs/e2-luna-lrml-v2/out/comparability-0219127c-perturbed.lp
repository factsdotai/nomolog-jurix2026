% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c5edb15669be18b9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- liftway(Liftway).
obligation_met(Liftway) :- power_socket(PowerSocket), suitable_for_powering(PowerSocket, lifting_device), liftway(Liftway), close_to(PowerSocket, Liftway).
r1: violation <= liftway(Liftway), not obligation_met(Liftway).
