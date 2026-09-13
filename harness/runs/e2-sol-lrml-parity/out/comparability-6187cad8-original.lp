% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 065fdb60c06d5760
applies :- fan(Fan), continuous_fan(Fan).
obligation_met(Fan) :- fan(Fan), operates_without_intervention(Fan).
r1: violation <= fan(Fan), continuous_fan(Fan), not obligation_met(Fan).
