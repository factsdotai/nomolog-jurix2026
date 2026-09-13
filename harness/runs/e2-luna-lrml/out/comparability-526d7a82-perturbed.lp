% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 01921231487594b7
applies :- wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure), no_damage(thermal_and_moisture_movements, wet_room_waterproofing), no_damage(thermal_and_moisture_movements, surface_structures).
r1: violation <= wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom), not obligation_met(Structure).
