% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f37baf658a1ec944
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- wet_room(WetRoom), structure_of(structure, WetRoom).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(WetRoom), structure_of(structure, WetRoom), not obligation_met.
