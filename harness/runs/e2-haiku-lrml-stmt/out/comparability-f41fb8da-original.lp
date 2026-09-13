% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 038ee3530a5f814e
applies :- glass_surface(GlassSurface), collision_danger(GlassSurface).
obligation_met(GlassSurface) :- glass_surface(GlassSurface), marked_noticeably(GlassSurface).
r1: violation <= glass_surface(GlassSurface), collision_danger(GlassSurface), not obligation_met(GlassSurface).
