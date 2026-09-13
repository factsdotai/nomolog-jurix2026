% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5ade5d7fda7e1696
applies :- compliance_checklist(c), checklist_part(p, c).
obligation_met :- completed(p).
r1: violation <= compliance_checklist(c), checklist_part(p, c), not obligation_met.
