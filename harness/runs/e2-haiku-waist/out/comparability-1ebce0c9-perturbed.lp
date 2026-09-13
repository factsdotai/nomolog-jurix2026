applies :- sanitary_room(R).
r1: violation <= sanitary_room(R), enclosure_element(E, R), not load_capacity_ok(E).
load_capacity_ok(E) :- load_capacity(E, C), C >= 1.5.
