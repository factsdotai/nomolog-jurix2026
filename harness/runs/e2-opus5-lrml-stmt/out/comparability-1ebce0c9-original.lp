% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b4f753611ffdce45
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- room(Room), enclosure_element(EnclosureElement).
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), not neg_scope_1.
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= room(Room), enclosure_element(EnclosureElement), not obligation_met(EnclosureElement).
neg_scope_1 :- room(Room), sanitary_room(Room).
