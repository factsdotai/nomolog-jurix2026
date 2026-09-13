% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 92c29d452cede0c4
applies :- extension_to_historic_dwelling(ExtensionToHistoricDwelling).
obligation_met(ExtensionToHistoricDwelling) :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), meets_ventilation_standards(ExtensionToHistoricDwelling).
obligation_met(ExtensionToHistoricDwelling) :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), appearance_match_needed(ExtensionToHistoricDwelling).
r1: violation <= extension_to_historic_dwelling(ExtensionToHistoricDwelling), not obligation_met(ExtensionToHistoricDwelling).
