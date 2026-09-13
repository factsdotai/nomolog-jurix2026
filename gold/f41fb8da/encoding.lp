% Glass surfaces with collision danger marked so as to be easily noticed.
% open-texture: collision_danger, marked_noticeably.
applies :- glass_surface(G), collision_danger(G).
r1: violation <= glass_surface(G), collision_danger(G), not marked_noticeably(G).
