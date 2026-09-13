% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7391476519925293
applies :- flat_on_storey(FlatOnStorey).
obligation_met(FlatOnStorey) :- flat_on_storey(FlatOnStorey), travel_distance <= max_travel_distance.
obligation_met(FlatOnStorey) :- flat_on_storey(FlatOnStorey), independent_alternative_escape(IndependentAlternativeEscape).
r1: violation <= flat_on_storey(FlatOnStorey), not obligation_met(FlatOnStorey).
