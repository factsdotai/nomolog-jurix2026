% Glass / light-permeable structure (with mountings) withstands normal load,
% unless protected by a fixed collision barrier. Mountings folded into the
% withstands leaf. "unless" = negation guard.
applies :- light_permeable_structure(G).
r1: violation <= light_permeable_structure(G), not withstands_normal_load(G), not protected_by_collision_barrier(G).
