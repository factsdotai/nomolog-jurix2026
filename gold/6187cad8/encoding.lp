% Continuously running fans operate without occupant intervention; manual or
% automatic high-rate controls are permitted (permission => distractor case).
applies :- continuous_fan(F).
r1: violation <= continuous_fan(F), not operates_without_intervention(F).
