applies :- extension_to_historic_dwelling(E).
r1: violation <= extension_to_historic_dwelling(E), not ventilation_ok(E).
r2: exempt <= extension_to_historic_dwelling(E), appearance_match_needed(E).
#conflict ventilation_ok, exempt.
r2 > r1.
ventilation_ok(E) :- meets_ventilation_standards(E).
