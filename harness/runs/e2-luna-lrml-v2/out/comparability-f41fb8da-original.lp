% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f86ab1d9951f57bb
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- glass_surface(GlassSurface), collision_danger(GlassSurface).
obligation_met(GlassSurface) :- glass_surface(GlassSurface), marked_noticeably(GlassSurface).
r1: violation <= glass_surface(GlassSurface), collision_danger(GlassSurface), not obligation_met(GlassSurface).
