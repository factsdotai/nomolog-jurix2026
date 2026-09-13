% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 23113e3309076a7a
applies :- approach(Approach), gradient_part(GradientPart), part_of(GradientPart, Approach), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05.
obligation_met(GradientPart) :- gradient_part(GradientPart), ramped_access(GradientPart).
r1: violation <= approach(Approach), gradient_part(GradientPart), part_of(GradientPart, Approach), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05, not obligation_met(GradientPart).
