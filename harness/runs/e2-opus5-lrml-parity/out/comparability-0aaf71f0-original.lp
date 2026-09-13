% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f54af8302848dca9
applies :- building(Building), primarily_one_storey(Building).
obligation_met(Building) :- building(Building), fire_compartmented_business_area_second_storey(Building, BuildingFireCompartmentedBusinessAreaSecondStorey), BuildingFireCompartmentedBusinessAreaSecondStorey <= 200, non_fire_compartmented_business_area_second_storey(Building, BuildingNonFireCompartmentedBusinessAreaSecondStorey), BuildingNonFireCompartmentedBusinessAreaSecondStorey <= 50.
r1: violation <= building(Building), primarily_one_storey(Building), not obligation_met(Building).
