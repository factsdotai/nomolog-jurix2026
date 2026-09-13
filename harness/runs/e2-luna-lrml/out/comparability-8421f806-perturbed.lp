% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4a7b0b6590941d8d
applies :- approach(Approach), gradient(Approach, ApproachGradient), ApproachGradient >= 0.05.
obligation_met(Approach) :- approach(Approach), ramped_access(Approach).
r1: violation <= approach(Approach), gradient(Approach, ApproachGradient), ApproachGradient >= 0.05, not obligation_met(Approach).
