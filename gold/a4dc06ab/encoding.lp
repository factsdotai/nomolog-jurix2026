% Protruding element free height >= 2200mm, unless the area is protected
% against collision danger. "unless" = negation guard (intra-sentence exception).
applies :- protruding_element(E).
r1: violation <= protruding_element(E), free_height(E, H), H < 2200, not area_protected(E).
