% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e205ded3ea4a6170
applies :- thermal_element(element), being_installed(element).
obligation_met :- draught_proofed(element), gaps_filled(element).
r1: violation <= thermal_element(element), being_installed(element), not obligation_met.
