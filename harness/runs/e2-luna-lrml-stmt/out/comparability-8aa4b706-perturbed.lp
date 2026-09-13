% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3b0b66d7ee03b381
applies :- compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart).
obligation_met(ChecklistPart) :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart), not obligation_met(ChecklistPart).
