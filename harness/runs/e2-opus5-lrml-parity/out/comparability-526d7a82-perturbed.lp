% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8353f535892683e5
applies :- wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure).
r1: violation <= wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom), not obligation_met(Structure).
