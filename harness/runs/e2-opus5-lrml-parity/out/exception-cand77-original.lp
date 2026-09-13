% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fd689e834483ee2b
applies :- building(Building), phased_evacuation(Building), storey(Storey), part_of(Storey, Building).
obligation_met(Storey) :- storey(Storey), top_storey(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_corridor(Storey).
r1: violation <= building(Building), phased_evacuation(Building), storey(Storey), part_of(Storey, Building), not obligation_met(Storey).
