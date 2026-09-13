% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 227abb6489dfa918
applies :- new_residential_building(NewResidentialBuilding).
obligation_met(NewResidentialBuilding) :- new_residential_building(NewResidentialBuilding), overheating_info_given_to_owner(NewResidentialBuilding).
r1: violation <= new_residential_building(NewResidentialBuilding), not obligation_met(NewResidentialBuilding).
