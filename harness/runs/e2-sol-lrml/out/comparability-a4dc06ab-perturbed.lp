% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 58f01dcd8b5879b0
applies :- protruding_element(StructuralElement), not neg_scope_1.
obligation_met(StructuralElement) :- free_height(StructuralElement, StructuralElementFreeHeight), StructuralElementFreeHeight >= 2200.
r1: violation <= protruding_element(StructuralElement), not neg_scope_1, not obligation_met(StructuralElement).
neg_scope_1 :- area_protected(StructuralElement).
