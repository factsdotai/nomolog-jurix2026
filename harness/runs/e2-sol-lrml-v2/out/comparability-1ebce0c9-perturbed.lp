% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: dc8862dd32b3c5e9
% n_statements: 1  n_overrides: 0  dangling: 0
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(room), enclosure_element(Element, room).
obligation_met(Element) :- load_capacity(Element, ElementLoadCapacity), ElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(room), enclosure_element(Element, room), not obligation_met(Element).
