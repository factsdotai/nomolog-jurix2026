% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2771ab0c6d904152
applies :- compliance_checklist(ComplianceChecklist).
obligation_met(ComplianceChecklist) :- compliance_checklist(ComplianceChecklist), checklist_part(ComplianceChecklist), completed(checklist_part).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met(ComplianceChecklist).
