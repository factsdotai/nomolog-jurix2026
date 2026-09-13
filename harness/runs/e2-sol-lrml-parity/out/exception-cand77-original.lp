% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e78541ad3386bf0b
applies :- building(Building), phased_evacuation_building(Building), storey(storey, Building).
obligation_met :- top_storey(storey).
obligation_met :- protected_lobby(storey).
obligation_met :- protected_corridor(storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(storey, Building), not obligation_met.
