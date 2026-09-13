% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e622d9e3688c0dd2
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- major_renovation(MajorRenovation), electric_vehicle_charge_point_infrastructure(ElectricVehicleChargePointInfrastructure).
obligation_met :- consistent_methodology(cost_comparison).
r1: violation <= major_renovation(MajorRenovation), electric_vehicle_charge_point_infrastructure(ElectricVehicleChargePointInfrastructure), not obligation_met.
