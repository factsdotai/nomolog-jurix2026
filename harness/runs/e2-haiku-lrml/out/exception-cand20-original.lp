% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c14a3d475ed4035e
applies :- extension(Extension), extension_to_historic_dwelling(Extension), not neg_scope_1.
obligation_met(Extension) :- extension(Extension), comply_with(Extension, ventilation_standards).
r1: violation <= extension(Extension), extension_to_historic_dwelling(Extension), not neg_scope_1, not obligation_met(Extension).
neg_scope_1 :- extension(Extension), appearance_match_needed(Extension).
