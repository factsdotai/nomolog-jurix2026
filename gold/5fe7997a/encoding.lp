% Total flow rate unachievable through all terminals => increase fan speed.
% open-texture: total_flow_unachievable.
applies :- vent_system(S), total_flow_unachievable(S).
r1: violation <= vent_system(S), total_flow_unachievable(S), not fan_speed_increased(S).
