% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8118a7c83d8b28b0
% n_statements: 1  n_overrides: 0  dangling: 0
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement).
obligation_met(EnclosureElement) :- enclosure_element(EnclosureElement), supports(EnclosureElement, grab_rails_seats_and_other_adaptations), load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), not obligation_met(EnclosureElement).
