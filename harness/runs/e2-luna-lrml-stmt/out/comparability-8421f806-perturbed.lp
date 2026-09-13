% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c61ed65ca84d1eeb
applies :- approach(Approach), gradient_part(GradientPart), value(Gradient, GradientValue), GradientValue >= 0.05.
obligation_met(GradientPart) :- gradient_part(GradientPart), ramped_access(GradientPart).
r1: violation <= approach(Approach), gradient_part(GradientPart), value(Gradient, GradientValue), GradientValue >= 0.05, not obligation_met(GradientPart).
