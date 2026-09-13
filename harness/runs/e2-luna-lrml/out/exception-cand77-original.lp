% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 194e24869b5ea365
applies :- phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1.
obligation_met :- stairs_approached_through(protected_lobby).
obligation_met :- stairs_approached_through(protected_corridor).
r1: violation <= phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1, not obligation_met.
neg_scope_1 :- top_storey(TopStorey).
