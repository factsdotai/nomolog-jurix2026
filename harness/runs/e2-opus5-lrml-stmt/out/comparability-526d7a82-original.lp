% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f14b0d854101aef4
applies :- wet_room(WetRoom), structure(Structure), part_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure).
r1: violation <= wet_room(WetRoom), structure(Structure), part_of(Structure, WetRoom), not obligation_met(Structure).
