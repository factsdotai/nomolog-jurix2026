% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5189aabb4f4a947b
applies :- approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05.
obligation_met :- ramped_access(p).
r1: violation <= approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05, not obligation_met.
