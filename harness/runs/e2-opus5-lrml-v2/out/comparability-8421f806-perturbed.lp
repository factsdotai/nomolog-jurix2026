% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 23113e3309076a7a
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- approach(Approach), gradient_part(GradientPart), part_of(GradientPart, Approach), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05.
obligation_met(GradientPart) :- gradient_part(GradientPart), ramped_access(GradientPart).
r1: violation <= approach(Approach), gradient_part(GradientPart), part_of(GradientPart, Approach), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05, not obligation_met(GradientPart).
