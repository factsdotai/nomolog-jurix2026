% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5af9deb02780c57e
applies :- protruding_element(ProtrudingElement).
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height(ProtrudingElement, ProtrudingElementFreeHeight), ProtrudingElementFreeHeight >= 2200.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
r1: violation <= protruding_element(ProtrudingElement), not obligation_met(ProtrudingElement).
