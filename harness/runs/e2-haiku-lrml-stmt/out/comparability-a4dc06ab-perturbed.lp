% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4a55a25f7b960525
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met :- free_height >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met.
neg_scope_1 :- area_protected(AreaProtected).
