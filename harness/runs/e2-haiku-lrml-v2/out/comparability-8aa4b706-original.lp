% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 532399c4d42d387d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- compliance_checklist(ComplianceChecklist).
obligation_met :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met.
