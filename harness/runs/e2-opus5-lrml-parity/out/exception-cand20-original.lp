% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e5bbc9436666f074
applies :- extension(Extension), extension_to_historic_dwelling(Extension).
obligation_met(Extension) :- extension(Extension), meets_ventilation_standards(Extension).
obligation_met(Extension) :- extension(Extension), appearance_match_needed(Extension).
r1: violation <= extension(Extension), extension_to_historic_dwelling(Extension), not obligation_met(Extension).
