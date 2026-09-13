% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 402cfdabcaedda0c
applies :- thermal_element(ThermalElement), being_installed(ThermalElement).
applies :- thermal_element(ThermalElement), renovating(ThermalElement).
obligation_met(ThermalElement) :- thermal_element(ThermalElement), draught_proofed(ThermalElement), gaps_filled(ThermalElement).
r1: violation <= thermal_element(ThermalElement), being_installed(ThermalElement), not obligation_met(ThermalElement).
r2: violation <= thermal_element(ThermalElement), renovating(ThermalElement), not obligation_met(ThermalElement).
