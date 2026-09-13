% bounded counting: all three distinct parts must be completed
applies :- compliance_checklist(C).
r1: violation <= compliance_checklist(C), not parts_ok(C).
parts_ok(C) :- checklist_part(P1, C), checklist_part(P2, C), checklist_part(P3, C), P1 != P2, P1 != P3, P2 != P3, completed(P1), completed(P2), completed(P3).
