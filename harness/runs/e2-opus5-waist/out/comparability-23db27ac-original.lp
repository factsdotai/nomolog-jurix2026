applies :- thermal_element(E), being_installed(E).
r1: violation <= thermal_element(E), being_installed(E), not element_ok(E).
element_ok(E) :- draught_proofed(E), gaps_filled(E).
