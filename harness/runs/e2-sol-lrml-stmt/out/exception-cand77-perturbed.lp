% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e4fbf2295c7af4fe
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), storey(Storey, Building).
obligation_met(Storey) :- storey(Storey), top_storey(Storey).
obligation_met(Storey) :- storey(Storey), protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), protected_corridor(Storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), storey(Storey, Building), not obligation_met(Storey).
