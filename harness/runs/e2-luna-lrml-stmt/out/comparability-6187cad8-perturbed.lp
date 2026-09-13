% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 83109d05a37ad8d5
applies :- continuous_fan(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan).
r1: violation <= continuous_fan(ContinuousFan), not obligation_met(ContinuousFan).
