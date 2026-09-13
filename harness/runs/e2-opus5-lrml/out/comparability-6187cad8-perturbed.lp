% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 174899b7091f7d08
% term-flattened: nested call -> constant operates_without_intervention_fan
% term-flattened: nested call -> constant manual_boost_control_fan
applies :- fan(Fan), continuous_fan(Fan).
obligation_met :- obligation(operates_without_intervention_fan), permission(manual_boost_control_fan).
r1: violation <= fan(Fan), continuous_fan(Fan), not obligation_met.
