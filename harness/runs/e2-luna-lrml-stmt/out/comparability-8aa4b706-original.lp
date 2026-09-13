% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d61ed3194f4cc35b
applies :- compliance_checklist(ComplianceChecklist).
obligation_met :- checklist_part(ChecklistPart), completed(ChecklistPart).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met.
