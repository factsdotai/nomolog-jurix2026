% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 287fbfed68250411
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building).
obligation_met(Storey) :- storey(Storey), protected_lobby(Storey, StoreyProtectedLobby).
obligation_met(Storey) :- storey(Storey), protected_corridor(Storey, StoreyProtectedCorridor).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), not obligation_met(Storey).
r2: exempt_r2 <= building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), top_storey(Storey).
#conflict violation, exempt_r2.
r2 > r1.
