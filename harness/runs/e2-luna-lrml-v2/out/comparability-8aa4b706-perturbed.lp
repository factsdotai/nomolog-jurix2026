% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2d50aba29715ede8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- compliance_checklist(ComplianceChecklist), checklist_part(p1, c1), checklist_part(p2, c1), checklist_part(p3, c1).
obligation_met :- completed(p1), completed(p2), completed(p3).
r1: violation <= compliance_checklist(ComplianceChecklist), checklist_part(p1, c1), checklist_part(p2, c1), checklist_part(p3, c1), not obligation_met.
