% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cf4ca21503bf3850
applies :- flat_storey(storey).
obligation_met :- flat_on_storey(flat, storey), independent_alt_escape(flat).
obligation_met :- travel_distance(storey, distance), max_travel_distance(storey, limit), distance <= limit.
r1: violation <= flat_storey(storey), not obligation_met.
