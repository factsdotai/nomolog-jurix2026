% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 25172c991ae32b05
applies :- approach(Approach), ramp(Ramp), part_of(Ramp, Approach).
obligation_met(Approach) :- approach(Approach), gradients_as_gentle_as_possible(Approach).
r1: violation <= approach(Approach), ramp(Ramp), part_of(Ramp, Approach), not obligation_met(Approach).
