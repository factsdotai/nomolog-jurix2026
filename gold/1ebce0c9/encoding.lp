% Walls/ducts/boxings to WC/bath/shower rooms support loads of 1.5 kN/m2.
applies :- sanitary_room(R).
r1: violation <= sanitary_room(R), enclosure_element(E, R), load_capacity(E, C), C < 1.5.
