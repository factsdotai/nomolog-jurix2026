% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ff4faf7739f254b4
applies :- building(building), phased_evacuation_building(building), storey(storey, building).
obligation_met :- top_storey(storey).
obligation_met :- protected_lobby(storey).
obligation_met :- protected_corridor(storey).
r1: violation <= building(building), phased_evacuation_building(building), storey(storey, building), not obligation_met.
