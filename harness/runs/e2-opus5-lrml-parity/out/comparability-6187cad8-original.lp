% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c1742df79a7973e0
applies :- continuous_fan(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), operates_without_intervention(ContinuousFan).
obligation_met(ContinuousFan) :- continuous_fan(ContinuousFan), manual_boost_control(ContinuousFan).
r1: violation <= continuous_fan(ContinuousFan), not obligation_met(ContinuousFan).
