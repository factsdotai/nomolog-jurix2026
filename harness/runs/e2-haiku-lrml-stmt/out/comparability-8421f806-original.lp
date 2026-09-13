% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ceecff1cc5bd8efb
% term-flattened: nested call -> constant greater_than_equal_1_20
applies :- approach(Approach), gradient(Approach, greater_than_equal_1_20).
applies :- approach(Approach), gradient_part(Approach).
obligation_met(Approach) :- approach(Approach), ramped_access(Approach).
r1: violation <= approach(Approach), gradient(Approach, greater_than_equal_1_20), not obligation_met(Approach).
r2: violation <= approach(Approach), gradient_part(Approach), not obligation_met(Approach).
