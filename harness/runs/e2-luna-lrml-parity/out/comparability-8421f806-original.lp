% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ea8341e1446f3232
applies :- approach(Approach), gradient_part(GradientPart), gradient >= 0.05.
obligation_met(GradientPart) :- gradient_part(GradientPart), ramped_access(GradientPart).
r1: violation <= approach(Approach), gradient_part(GradientPart), gradient >= 0.05, not obligation_met(GradientPart).
