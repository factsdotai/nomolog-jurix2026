% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5736789dd6195a35
% term-flattened: nested call -> constant greater_than_equal_1_20
% term-flattened: nested call -> constant gradient_part_approach
% term-flattened: nested call -> constant greater_than_equal_1_20
applies :- approach(Approach), gradient(Approach, greater_than_equal_1_20).
applies :- approach(Approach), gradient_part(Approach).
applies :- approach(Approach), gradient(gradient_part_approach, greater_than_equal_1_20).
obligation_met(Approach) :- approach(Approach), ramped_access(Approach).
r1: violation <= approach(Approach), gradient(Approach, greater_than_equal_1_20), not obligation_met(Approach).
r2: violation <= approach(Approach), gradient_part(Approach), not obligation_met(Approach).
r3: violation <= approach(Approach), gradient(gradient_part_approach, greater_than_equal_1_20), not obligation_met(Approach).
