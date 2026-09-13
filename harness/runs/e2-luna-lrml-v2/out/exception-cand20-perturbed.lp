% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b52e0c69aaf61627
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- extension_to_historic_dwelling(extension).
obligation_met :- meets_ventilation_standards(extension).
r1: violation <= extension_to_historic_dwelling(extension), not obligation_met.
r2: exempt_r2 <= extension_to_historic_dwelling(extension), appearance_match_needed(extension).
#conflict violation, exempt_r2.
r2 > r1.
