% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: bf2fcf0a69b4ec6e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure).
r1: violation <= wet_room(WetRoom), structure(Structure), structure_of(Structure, WetRoom), not obligation_met(Structure).
