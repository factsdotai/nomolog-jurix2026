% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: da89ad5605861bd1
applies :- structure_of(structure, room), wet_room(room).
applies :- structure_of(structure, room), dry_room(room).
obligation_met :- dry_room(room).
obligation_met :- rigidity_adequate(structure).
r1: violation <= structure_of(structure, room), wet_room(room), not obligation_met.
r2: violation <= structure_of(structure, room), dry_room(room), not obligation_met.
