% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bc7923545da03dc4
applies :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), meets_ventilation_standards(ExtensionToHistoricDwelling).
obligation_met(ExtensionToHistoricDwelling) :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), comply_with(ExtensionToHistoricDwelling, ventilation_standards).
obligation_met(ExtensionToHistoricDwelling) :- extension_to_historic_dwelling(ExtensionToHistoricDwelling), appearance_match_needed(ExtensionToHistoricDwelling).
r1: violation <= extension_to_historic_dwelling(ExtensionToHistoricDwelling), meets_ventilation_standards(ExtensionToHistoricDwelling), not obligation_met(ExtensionToHistoricDwelling).
