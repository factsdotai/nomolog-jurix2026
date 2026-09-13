% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d2e3ada706ab6889
applies :- compliance_checklist(ComplianceChecklist).
obligation_met :- checklist_part(ChecklistPart), completed(Completed).
r1: violation <= compliance_checklist(ComplianceChecklist), not obligation_met.
