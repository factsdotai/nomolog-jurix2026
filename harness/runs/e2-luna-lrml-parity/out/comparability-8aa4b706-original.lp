% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 21a58af6ddbfd451
applies :- compliance_checklist(ComplianceChecklist).
obligation_met(ComplianceChecklist) :- checklist_part(ChecklistPart), compliance_checklist(ComplianceChecklist), part_of(ChecklistPart, ComplianceChecklist), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met(ComplianceChecklist).
