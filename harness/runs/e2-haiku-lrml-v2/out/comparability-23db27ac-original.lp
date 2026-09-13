% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ebe47f1bad6648a8
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- thermal_element(ThermalElement), being_installed(ThermalElement).
applies :- thermal_element(ThermalElement), renovating(ThermalElement).
obligation_met_r1(ThermalElement) :- thermal_element(ThermalElement), draught_proofed(ThermalElement).
r1: violation <= thermal_element(ThermalElement), being_installed(ThermalElement), not obligation_met_r1(ThermalElement).
r2: violation <= thermal_element(ThermalElement), renovating(ThermalElement), not obligation_met_r1(ThermalElement).
obligation_met_r2(ThermalElement) :- thermal_element(ThermalElement), gaps_filled(ThermalElement).
r3: violation <= thermal_element(ThermalElement), being_installed(ThermalElement), not obligation_met_r2(ThermalElement).
r4: violation <= thermal_element(ThermalElement), renovating(ThermalElement), not obligation_met_r2(ThermalElement).
