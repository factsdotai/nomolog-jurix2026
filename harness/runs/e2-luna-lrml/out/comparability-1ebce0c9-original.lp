% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6714d75d6d8aa3e9
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(SanitaryRoom).
obligation_met :- load_capacity(EnclosureElement, EnclosureElementLoadCapacity), EnclosureElementLoadCapacity >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), not obligation_met.
