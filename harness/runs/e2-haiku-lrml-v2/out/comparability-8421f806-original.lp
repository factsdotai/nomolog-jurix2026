% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b01fb69dfb3d3000
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- approach(Approach).
applies :- approach(Approach), gradient_part(GradientPart), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05.
obligation_met_r1 :- gradient_part(GradientPart), gradient >= 0.05, ramped_access(RampedAccess).
r1: violation <= approach(Approach), not obligation_met_r1.
obligation_met_r2(GradientPart) :- gradient_part(GradientPart), ramped_access(GradientPart).
r2: violation <= approach(Approach), gradient_part(GradientPart), gradient(GradientPart, GradientPartGradient), GradientPartGradient >= 0.05, not obligation_met_r2(GradientPart).
