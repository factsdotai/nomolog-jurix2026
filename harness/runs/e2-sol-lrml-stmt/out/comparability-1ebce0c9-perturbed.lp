% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 34c684d6cacff085
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(sanitary_room), enclosure_element(EnclosureElement, sanitary_room).
obligation_met(EnclosureElement) :- load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(sanitary_room), enclosure_element(EnclosureElement, sanitary_room), not obligation_met(EnclosureElement).
