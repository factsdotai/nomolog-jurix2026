% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ae333d0e7cf50946
applies :- building(Building), new_residential_building(Building).
obligation_met(Building) :- building(Building), overheating_info_given_to_owner(Building).
r1: violation <= building(Building), new_residential_building(Building), not obligation_met(Building).
