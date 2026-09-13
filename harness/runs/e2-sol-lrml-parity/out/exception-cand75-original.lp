% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 837d47f741e1c27f
% term-flattened: nested call -> constant travel_distance_storey
% term-flattened: nested call -> constant max_travel_distance_storey
applies :- flat_storey(storey).
obligation_met :- travel_distance_storey <= max_travel_distance_storey.
obligation_met :- flat_on_storey(flat, storey), independent_alt_escape(flat).
r1: violation <= flat_storey(storey), not obligation_met.
