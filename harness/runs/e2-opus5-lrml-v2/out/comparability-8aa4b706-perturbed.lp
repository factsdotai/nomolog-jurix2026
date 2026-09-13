% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 32d938728300e966
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- compliance_checklist(ComplianceChecklist), part(Part), checklist_part(ComplianceChecklist, Part).
obligation_met(Part) :- part(Part), completed(Part).
r1: violation <= compliance_checklist(ComplianceChecklist), part(Part), checklist_part(ComplianceChecklist, Part), not obligation_met(Part).
