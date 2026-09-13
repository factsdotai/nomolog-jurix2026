% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4f7bb086a084f451
applies :- extension_to_historic_dwelling(extension), not neg_scope_1.
obligation_met :- meets_ventilation_standards(extension).
r1: violation <= extension_to_historic_dwelling(extension), not neg_scope_1, not obligation_met.
neg_scope_1 :- appearance_match_needed(extension).
