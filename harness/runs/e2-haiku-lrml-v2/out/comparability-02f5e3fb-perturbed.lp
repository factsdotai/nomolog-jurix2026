% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e118cdb92a49572d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), new_residential_building(Building).
obligation_met(Building) :- overheating_information(OverheatingInformation), building(Building), given_to_owner(OverheatingInformation, Building).
r1: violation <= building(Building), new_residential_building(Building), not obligation_met(Building).
