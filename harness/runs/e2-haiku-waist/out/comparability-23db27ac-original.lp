applies :- thermal_element(E), being_installed(E).
applies :- thermal_element(E), renovating(E).
r1: violation <= thermal_element(E), being_installed(E), not draught_proofed(E).
r2: violation <= thermal_element(E), being_installed(E), not gaps_filled(E).
r3: violation <= thermal_element(E), renovating(E), not draught_proofed(E).
r4: violation <= thermal_element(E), renovating(E), not gaps_filled(E).
