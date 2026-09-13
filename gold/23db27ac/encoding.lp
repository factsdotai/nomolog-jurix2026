% Thermal element being installed/renovated => draught-proofed and air-leakage
% gaps filled.
applies :- thermal_element(E), being_installed(E).
r1: violation <= thermal_element(E), being_installed(E), not draught_proofed(E).
r2: violation <= thermal_element(E), being_installed(E), not gaps_filled(E).
