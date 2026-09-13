% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: af645e929d3dfd8a
applies :- new_residential_building(NewResidentialBuilding), new_residential_building(building).
obligation_met :- overheating_info_given_to_owner(building).
r1: violation <= new_residential_building(NewResidentialBuilding), new_residential_building(building), not obligation_met.
