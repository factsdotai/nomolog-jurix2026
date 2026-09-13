% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b7f5da2a9adbfdda
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- wet_room(wet_room), structure_of(structure, wet_room).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(wet_room), structure_of(structure, wet_room), not obligation_met.
