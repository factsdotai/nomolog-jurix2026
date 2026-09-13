% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 043e4db1cd81b56c
% term-flattened: nested call -> constant install_cost_fraction_residential_buildi
applies :- residential_building(ResidentialBuilding), major_renovation(ResidentialBuilding).
obligation_met(ResidentialBuilding) :- residential_building(ResidentialBuilding), cable_route_installed(ResidentialBuilding).
obligation_met(ResidentialBuilding) :- residential_building(ResidentialBuilding), install_cost_fraction_residential_buildi > 0.07.
r1: violation <= residential_building(ResidentialBuilding), major_renovation(ResidentialBuilding), not obligation_met(ResidentialBuilding).
