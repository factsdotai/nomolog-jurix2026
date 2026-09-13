% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a20146d5cd14bb8f
applies :- wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure), not neg_scope_1.
r1: violation <= wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom), not obligation_met(Structure).
neg_scope_1 :- damage(thermal_and_moisture_movements, wet_room_waterproofing_or_surface_structures).
