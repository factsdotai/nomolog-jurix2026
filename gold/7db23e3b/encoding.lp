% Natural ventilation system: ventilation valves easy to close.
% open-texture: easy_to_close.
applies :- natural_vent_system(S).
r1: violation <= natural_vent_system(S), vent_valve(V, S), not easy_to_close(V).
