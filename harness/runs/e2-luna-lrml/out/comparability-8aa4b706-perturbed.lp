% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 058c49e8d74c4a6a
applies :- compliance_checklist(c), checklist_part(p1, c), checklist_part(p2, c), checklist_part(p3, c).
obligation_met :- completed(p1), completed(p2), completed(p3).
r1: violation <= compliance_checklist(c), checklist_part(p1, c), checklist_part(p2, c), checklist_part(p3, c), not obligation_met.
