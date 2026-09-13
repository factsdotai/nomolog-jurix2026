% Cost-determination methodology consistent across all elements of the
% renovation-vs-EV-infrastructure comparison. open-texture: consistent_methodology.
applies :- cost_comparison(C).
r1: violation <= cost_comparison(C), not consistent_methodology(C).
