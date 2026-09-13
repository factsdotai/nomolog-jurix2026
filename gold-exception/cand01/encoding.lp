% Norm: cavity surface class per Table 9.1. Three provision-level carve-outs, each a
% superior defeasible rule. Cases are single-cavity: propositional defeat cannot
% scope an exemption to one cavity among several (S5 finding -> Paper 2).
applies :- cavity(C).
r1: violation <= cavity(C), not surface_class_ok(C).
r2: exempt <= cavity(C), fire_resisting_only_loadbearing(C).
r3: exempt <= cavity(C), meets_diagram_9_2(C).
r4: exempt <= cavity(C), above_fire_resisting_ceiling(C).
#conflict violation, exempt.
r2 > r1.
r3 > r1.
r4 > r1.
