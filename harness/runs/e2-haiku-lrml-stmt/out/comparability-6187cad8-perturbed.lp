% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 38e80cf25fe451ae
applies :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), manual_boost_control(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), automatic_boost_control(ContinuousFan).
r1: violation <= continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan), not obligation_met(ContinuousFan).
