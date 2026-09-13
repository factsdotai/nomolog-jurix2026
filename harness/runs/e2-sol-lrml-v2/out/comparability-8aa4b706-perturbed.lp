% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fef5bbf306dba3a7
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- compliance_checklist(checklist), checklist_part(part, checklist).
obligation_met :- completed(part).
r1: violation <= compliance_checklist(checklist), checklist_part(part, checklist), not obligation_met.
