% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b42dd0910a608ef8
applies :- glass_surface(glass_surface), collision_danger(glass_surface).
obligation_met :- marked_noticeably(glass_surface).
r1: violation <= glass_surface(glass_surface), collision_danger(glass_surface), not obligation_met.
