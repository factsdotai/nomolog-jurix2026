% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: aa7934e7fb5adce2
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(n), generation_system(o), replacement_generation_system(n, o), capacity(n, nc), capacity(o, oc).
obligation_met :- nc >= oc.
r1: violation <= generation_system(n), generation_system(o), replacement_generation_system(n, o), capacity(n, nc), capacity(o, oc), not obligation_met.
r2: exempt_r2 <= generation_system(n), generation_system(o), replacement_generation_system(n, o), capacity(n, nc), capacity(o, oc), smaller_claimed(n), demonstrated_more_appropriate(n).
#conflict violation, exempt_r2.
r2 > r1.
