% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 99a4a487c7355ff2
applies :- approach(Approach), ramp(Ramp).
obligation_met(Approach) :- approach(Approach), gradients_as_gentle_as_possible(Approach).
r1: violation <= approach(Approach), ramp(Ramp), not obligation_met(Approach).
