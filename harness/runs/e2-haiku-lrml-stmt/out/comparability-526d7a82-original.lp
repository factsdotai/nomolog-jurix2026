% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0ce1beb8213cb03e
applies :- wet_room(WetRoom), structure_of(structure, WetRoom).
obligation_met :- rigidity_adequate(structure).
r1: violation <= wet_room(WetRoom), structure_of(structure, WetRoom), not obligation_met.
