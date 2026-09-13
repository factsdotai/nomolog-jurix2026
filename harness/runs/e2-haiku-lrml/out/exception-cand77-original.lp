% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 69ab0fb7b62f74f3
applies :- phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1, storey(Storey, PhasedEvacuationBuilding).
obligation_met :- approached_through_protected_lobby(stairs).
obligation_met :- approached_through_protected_corridor(stairs).
r1: violation <= phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1, storey(Storey, PhasedEvacuationBuilding), not obligation_met.
neg_scope_1 :- storey(Storey), top_storey(Storey).
