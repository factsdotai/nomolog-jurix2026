% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 53c201e5425be8b5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- approach(Approach), gradient(Approach, 0.05).
applies :- approach(Approach), gradient_part_steeper(Approach).
obligation_met(Approach) :- approach(Approach), ramped_access(Approach).
r1: violation <= approach(Approach), gradient(Approach, 0.05), not obligation_met(Approach).
r2: violation <= approach(Approach), gradient_part_steeper(Approach), not obligation_met(Approach).
