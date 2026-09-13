% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: df489cbb7d8485bd
applies :- compliance_checklist(ComplianceChecklist).
obligation_met(ComplianceChecklist) :- compliance_checklist(ComplianceChecklist), checklist_part(part, ComplianceChecklist), completed(part).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met(ComplianceChecklist).
