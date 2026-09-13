% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a885789a82007a20
applies :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), not neg_scope_1.
obligation_met :- meets_ventilation_standards(MeetsVentilationStandards).
r1: violation <= extension_to_historic_dwelling(ExtensionToHistoricDwelling), not neg_scope_1, not obligation_met.
neg_scope_1 :- appearance_match_needed(AppearanceMatchNeeded).
