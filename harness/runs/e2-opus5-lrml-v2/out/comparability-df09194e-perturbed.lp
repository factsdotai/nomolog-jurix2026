% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 35b6abcf78f91b97
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- approach(Approach).
obligation_met(Approach) :- approach(Approach), gradients_as_gentle_as_possible(Approach).
r1: violation <= approach(Approach), not obligation_met(Approach).
