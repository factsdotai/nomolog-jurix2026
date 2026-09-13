% All parts of the compliance checklist completed (universal over its parts;
% the count of three is fixed by the instrument, not re-derived here).
applies :- compliance_checklist(C).
r1: violation <= compliance_checklist(C), checklist_part(P, C), not completed(P).
