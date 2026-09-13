% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e205ded3ea4a6170
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- thermal_element(element), being_installed(element).
obligation_met :- draught_proofed(element), gaps_filled(element).
r1: violation <= thermal_element(element), being_installed(element), not obligation_met.
