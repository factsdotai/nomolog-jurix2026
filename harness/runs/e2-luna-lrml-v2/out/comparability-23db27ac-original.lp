% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 68d7e863c20e649f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- thermal_element(ThermalElement), being_installed(ThermalElement).
obligation_met(ThermalElement) :- thermal_element(ThermalElement), draught_proofed(ThermalElement), gaps_filled(ThermalElement).
r1: violation <= thermal_element(ThermalElement), being_installed(ThermalElement), not obligation_met(ThermalElement).
