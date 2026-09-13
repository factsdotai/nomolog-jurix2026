% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a651a853c02f714b
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart), part_of(ChecklistPart, ComplianceChecklist).
obligation_met(ChecklistPart) :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), checklist_part(ChecklistPart), part_of(ChecklistPart, ComplianceChecklist), not obligation_met(ChecklistPart).
