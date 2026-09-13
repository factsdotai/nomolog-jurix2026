% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6ca2a203d86a0312
applies :- extension(Extension), extension_to_historic_dwelling(Extension).
obligation_met(Extension) :- extension(Extension), comply_with(Extension, ventilation_standards).
obligation_met(Extension) :- extension(Extension), appearance_match_needed(Extension).
r1: violation <= extension(Extension), extension_to_historic_dwelling(Extension), not obligation_met(Extension).
