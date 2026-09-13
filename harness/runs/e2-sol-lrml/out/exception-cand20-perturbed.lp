% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d4fc22af2a0a4c24
applies :- extension(Extension), extension_to_historic_dwelling(Extension), not neg_scope_1.
obligation_met(Extension) :- extension(Extension), meets_ventilation_standards(Extension).
r1: violation <= extension(Extension), extension_to_historic_dwelling(Extension), not neg_scope_1, not obligation_met(Extension).
neg_scope_1 :- extension(Extension), appearance_match_needed(Extension).
