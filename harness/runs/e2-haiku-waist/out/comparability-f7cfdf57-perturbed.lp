applies :- passageway(P), level_change_feature(F, P).
r1: violation <= passageway(P), level_change_feature(F, P), not indication_ok(F).
indication_ok(F) :- clearly_indicated(F).
