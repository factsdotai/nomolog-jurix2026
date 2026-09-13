% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: aa9d35aa4a64a3a9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), part_of(EnclosureElement, SanitaryRoom).
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), part_of(EnclosureElement, SanitaryRoom), not obligation_met(EnclosureElement).
