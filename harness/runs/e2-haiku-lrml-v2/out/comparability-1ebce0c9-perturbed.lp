% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d47c3b1b4a98ee94
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant load_capacity_enclosure_element_sanitary
% unit-unverified: '1.5 kN/m2' passed through as 1.5
applies :- sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement).
obligation_met :- load_capacity_enclosure_element_sanitary >= 1.5.
r1: violation <= sanitary_room(SanitaryRoom), enclosure_element(EnclosureElement), not obligation_met.
