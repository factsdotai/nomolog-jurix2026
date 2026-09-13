% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b310a2919aa100a2
applies :- major_renovation(MajorRenovation), electric_vehicle_charge_point_infrastructure(ElectricVehicleChargePointInfrastructure).
obligation_met :- consistent_methodology(cost_comparison).
r1: violation <= major_renovation(MajorRenovation), electric_vehicle_charge_point_infrastructure(ElectricVehicleChargePointInfrastructure), not obligation_met.
