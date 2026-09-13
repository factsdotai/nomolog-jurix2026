% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 246e1501562a3a5d
applies :- thermal_element(e1), being_installed(e1).
obligation_met :- draught_proofed(e1), gaps_filled(e1).
r1: violation <= thermal_element(e1), being_installed(e1), not obligation_met.
