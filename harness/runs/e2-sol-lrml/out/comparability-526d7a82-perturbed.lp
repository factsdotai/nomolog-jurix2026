% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b7f5da2a9adbfdda
applies :- wet_room(wet_room), structure_of(structure, wet_room).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(wet_room), structure_of(structure, wet_room), not obligation_met.
