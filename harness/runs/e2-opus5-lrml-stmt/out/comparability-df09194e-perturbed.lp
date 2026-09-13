% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 35b6abcf78f91b97
applies :- approach(Approach).
obligation_met(Approach) :- approach(Approach), gradients_as_gentle_as_possible(Approach).
r1: violation <= approach(Approach), not obligation_met(Approach).
