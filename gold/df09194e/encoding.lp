% Approach gradients as gentle as possible ("Generally" hortatory; single
% open-texture leaf -- leaf-density datum).
applies :- approach(A).
r1: violation <= approach(A), not gradients_as_gentle_as_possible(A).
