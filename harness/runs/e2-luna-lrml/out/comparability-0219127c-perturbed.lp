% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1ef93c9b8dbff4ff
applies :- power_socket(power_socket), liftway(liftway), suitable_for_powering(power_socket, lifting_device).
obligation_met :- close_to(power_socket, liftway).
r1: violation <= power_socket(power_socket), liftway(liftway), suitable_for_powering(power_socket, lifting_device), not obligation_met.
