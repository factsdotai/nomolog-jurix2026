% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8709df9a7cd77cad
applies :- wet_room(WetRoom), structure_of(structure, WetRoom).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(WetRoom), structure_of(structure, WetRoom), not obligation_met.
