% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a487fa0305099646
applies :- compliance_checklist(c1), checklist_part(p1, c1), checklist_part(p2, c1), checklist_part(p3, c1).
obligation_met :- completed(p1), completed(p2), completed(p3).
r1: violation <= compliance_checklist(c1), checklist_part(p1, c1), checklist_part(p2, c1), checklist_part(p3, c1), not obligation_met.
