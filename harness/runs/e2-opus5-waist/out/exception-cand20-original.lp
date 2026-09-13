% exception as superior defeasible rule (the defeat idiom)
applies :- extension_to_historic_dwelling(E).
r1: violation <= extension_to_historic_dwelling(E), not meets_ventilation_standards(E).
r2: exempt <= extension_to_historic_dwelling(E), appearance_match_needed(E).
#conflict violation, exempt.
r2 > r1.
