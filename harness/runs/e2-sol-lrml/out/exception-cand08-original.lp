% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e2e0ee202bb3adfc
% term-flattened: nested call -> constant mounting_height_switch
% term-flattened: nested call -> constant mounting_height_switch
applies :- appliance_switch(switch), not neg_scope_1.
obligation_met :- mounting_height_switch >= 400, mounting_height_switch <= 1200.
r1: violation <= appliance_switch(switch), not neg_scope_1, not obligation_met.
neg_scope_1 :- higher_level_needed(switch).
