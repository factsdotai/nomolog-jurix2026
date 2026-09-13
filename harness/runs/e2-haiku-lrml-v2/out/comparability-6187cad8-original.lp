% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7d4d3c4d2ff7f037
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- fan(Fan), continuous_fan(Fan).
obligation_met(Fan) :- fan(Fan), operates_without_intervention(Fan).
r1: violation <= fan(Fan), continuous_fan(Fan), not obligation_met(Fan).
% permission: no violation rule (policy P4)
