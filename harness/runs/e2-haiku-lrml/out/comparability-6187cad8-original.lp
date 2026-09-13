% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4e6f7b3626e0cb89
applies :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), manual_control(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), automatic_control(ContinuousFan).
r1: violation <= continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), not obligation_met(ContinuousFan).
