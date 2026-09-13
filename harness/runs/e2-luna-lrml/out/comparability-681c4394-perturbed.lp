% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2554b0a0f2d1b76a
applies :- appliance(Appliance).
obligation_met(Appliance) :- appliance(Appliance), heat_release_rate(Appliance, ApplianceHeatReleaseRate), adjustable(ApplianceHeatReleaseRate), adjustable_damper(Appliance).
obligation_met(Appliance) :- appliance(Appliance), heat_release_rate(Appliance, ApplianceHeatReleaseRate), adjustable(ApplianceHeatReleaseRate), thermostatic_control(Appliance).
r1: violation <= appliance(Appliance), not obligation_met(Appliance).
