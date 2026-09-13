% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2554b0a0f2d1b76a
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- appliance(Appliance).
obligation_met(Appliance) :- appliance(Appliance), heat_release_rate(Appliance, ApplianceHeatReleaseRate), adjustable(ApplianceHeatReleaseRate), adjustable_damper(Appliance).
obligation_met(Appliance) :- appliance(Appliance), heat_release_rate(Appliance, ApplianceHeatReleaseRate), adjustable(ApplianceHeatReleaseRate), thermostatic_control(Appliance).
r1: violation <= appliance(Appliance), not obligation_met(Appliance).
