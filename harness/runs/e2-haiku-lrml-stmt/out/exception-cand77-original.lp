% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d1836c83faffb04a
applies :- phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1, stairs(Stairs).
obligation_met(Stairs) :- stairs(Stairs), approached_through_protected_lobby(Stairs).
obligation_met(Stairs) :- stairs(Stairs), approached_through_protected_corridor(Stairs).
r1: violation <= phased_evacuation_building(PhasedEvacuationBuilding), storey(Storey), not neg_scope_1, stairs(Stairs), not obligation_met(Stairs).
neg_scope_1 :- storey(Storey), top_storey(Storey).
