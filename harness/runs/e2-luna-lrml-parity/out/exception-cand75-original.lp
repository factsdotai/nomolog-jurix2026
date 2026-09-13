% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1e1393895bec5492
applies :- flat_on_storey(FlatOnStorey), flat_storey(FlatStorey).
obligation_met(FlatOnStorey) :- flat_on_storey(FlatOnStorey), travel_distance <= max_travel_distance.
obligation_met(FlatOnStorey) :- flat_on_storey(FlatOnStorey), independent_alt_escape(IndependentAltEscape).
r1: violation <= flat_on_storey(FlatOnStorey), flat_storey(FlatStorey), not obligation_met(FlatOnStorey).
