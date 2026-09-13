% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3710a63c65ab2ab4
applies :- extension_to_historic_dwelling(extension).
obligation_met :- meets_ventilation_standards(extension).
obligation_met :- appearance_match_needed(extension).
r1: violation <= extension_to_historic_dwelling(extension), not obligation_met.
