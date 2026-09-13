% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 97f9bbe64b3df3b8
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- continuous_fan(fan).
obligation_met :- operates_without_intervention(fan).
r1: violation <= continuous_fan(fan), not obligation_met.
% permission: no violation rule (policy P4)
