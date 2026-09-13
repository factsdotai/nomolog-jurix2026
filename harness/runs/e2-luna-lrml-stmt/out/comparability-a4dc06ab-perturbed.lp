% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5ec4a60e8049b9eb
% term-flattened: nested call -> constant free_height_protruding_element_2_2_metre
applies :- protruding_element(ProtrudingElement).
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height_protruding_element_2_2_metre >= 2200.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
r1: violation <= protruding_element(ProtrudingElement), not obligation_met(ProtrudingElement).
