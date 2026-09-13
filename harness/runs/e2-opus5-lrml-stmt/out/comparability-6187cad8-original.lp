% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3f54d7e967e13f5b
applies :- fan(Fan), continuous_fan(Fan).
obligation_met(Fan) :- fan(Fan), operates_without_intervention(Fan).
obligation_met(Fan) :- fan(Fan), manual_boost_control(Fan).
r1: violation <= fan(Fan), continuous_fan(Fan), not obligation_met(Fan).
