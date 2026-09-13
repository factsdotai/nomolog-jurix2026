% Adequate space for access to maintain ventilation equipment.
% open-texture: adequate_access_space.
applies :- ventilation_equipment(E).
r1: violation <= ventilation_equipment(E), not adequate_access_space(E).
