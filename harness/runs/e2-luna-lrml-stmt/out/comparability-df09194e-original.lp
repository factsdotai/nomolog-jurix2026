% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3077bd0b3b749257
applies :- approach(Approach).
obligation_met(Approach) :- approach(Approach), gradients_as_gentle_as_possible(Approach).
r1: violation <= approach(Approach), not obligation_met(Approach).
