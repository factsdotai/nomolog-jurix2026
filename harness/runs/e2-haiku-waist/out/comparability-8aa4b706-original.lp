applies :- compliance_checklist(C).
r1: violation <= compliance_checklist(C), not checklist_ok(C).
checklist_ok(C) :- checklist_part(C, P1), checklist_part(C, P2), checklist_part(C, P3), P1 != P2, P1 != P3, P2 != P3, completed(P1), completed(P2), completed(P3).
