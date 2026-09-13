% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 168fe001e23c5241
applies :- extension_to_historic_dwelling(extension).
obligation_met :- not neg_scope_1.
obligation_met :- meets_ventilation_standards(extension).
r1: violation <= extension_to_historic_dwelling(extension), not obligation_met.
neg_scope_1 :- appearance_match_needed(extension).
