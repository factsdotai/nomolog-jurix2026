% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dc8862dd32b3c5e9
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(room), enclosure_element(Element, room).
obligation_met(Element) :- load_capacity(Element, ElementLoadCapacity), ElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(room), enclosure_element(Element, room), not obligation_met(Element).
