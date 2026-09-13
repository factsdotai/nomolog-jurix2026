% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 085f0a1f7332405e
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement).
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), not obligation_met(EnclosureElement).
