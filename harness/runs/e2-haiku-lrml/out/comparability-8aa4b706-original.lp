% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 532399c4d42d387d
applies :- compliance_checklist(ComplianceChecklist).
obligation_met :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met.
