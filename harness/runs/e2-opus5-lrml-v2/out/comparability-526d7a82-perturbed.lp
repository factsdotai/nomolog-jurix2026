% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 72049acfc19fe7b8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- wet_room(WetRoom), structure(Structure), part_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), adequate_rigidity(Structure).
r1: violation <= wet_room(WetRoom), structure(Structure), part_of(Structure, WetRoom), not obligation_met(Structure).
