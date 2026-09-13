% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ba686e0261f55050
applies :- thermal_element(ThermalElement), being_installed(ThermalElement).
obligation_met(ThermalElement) :- thermal_element(ThermalElement), draught_proofed(ThermalElement), gaps_filled(ThermalElement).
r1: violation <= thermal_element(ThermalElement), being_installed(ThermalElement), not obligation_met(ThermalElement).
