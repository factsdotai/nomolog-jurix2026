% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9e50d7725691807e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- room(Room), wet_room(Room), structure(Structure), structure_of(Structure, Room).
obligation_met(Structure) :- structure(Structure), rigidity_adequate(Structure).
r1: violation <= room(Room), wet_room(Room), structure(Structure), structure_of(Structure, Room), not obligation_met(Structure).
