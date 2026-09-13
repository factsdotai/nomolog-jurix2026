applies :- compliance_checklist(C).
r1: violation <= compliance_checklist(C), not checklist_complete(C).
checklist_complete(C) :- compliance_checklist(C), checklist_part(P1, C), checklist_part(P2, C), checklist_part(P3, C), completed(P1), completed(P2), completed(P3), P1 != P2, P1 != P3, P2 != P3.
