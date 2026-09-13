% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7fe796545d53ec80
applies :- wet_room(room), structure_of(structure, room).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(room), structure_of(structure, room), not obligation_met.
