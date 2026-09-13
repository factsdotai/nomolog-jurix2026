% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 83e517a7d00b4539
applies :- compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart), part_of(ChecklistPart, ComplianceChecklist).
obligation_met(ChecklistPart) :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart), part_of(ChecklistPart, ComplianceChecklist), not obligation_met(ChecklistPart).
