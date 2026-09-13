% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 08dcf488d6a5b24c
applies :- door_closer(DoorCloser), fire_doorset(DoorCloser), fusible_link(DoorCloser).
r1: violation <= door_closer(DoorCloser), fire_doorset(DoorCloser), fusible_link(DoorCloser), escape_opening(DoorCloser), not neg_scope_1.
neg_scope_1 :- door_closer(DoorCloser), complies_c7(DoorCloser).
