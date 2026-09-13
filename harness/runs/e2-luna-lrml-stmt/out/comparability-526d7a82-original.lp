% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f86449cf3b6ce0bd
applies :- wet_room(WetRoom), structure_of(StructureOf).
obligation_met(StructureOf) :- structure_of(StructureOf), rigidity_adequate(StructureOf).
r1: violation <= wet_room(WetRoom), structure_of(StructureOf), not obligation_met(StructureOf).
