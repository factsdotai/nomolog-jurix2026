% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: aa9d35aa4a64a3a9
applies :- sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), part_of(EnclosureElement, SanitaryRoom).
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), part_of(EnclosureElement, SanitaryRoom), not obligation_met(EnclosureElement).
