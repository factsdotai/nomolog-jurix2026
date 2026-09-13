% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3133da975d8872f0
applies :- wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure), not neg_scope_1, not neg_scope_2.
r1: violation <= wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom), not obligation_met(Structure).
neg_scope_1 :- damage(thermal_and_moisture_movements, wet_room_waterproofing).
neg_scope_2 :- damage(thermal_and_moisture_movements, surface_structures).
