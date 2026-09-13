% New residential building erected => overheating-mitigation information given
% to the owner. Purpose clause ("to allow them to use...") non-operative.
applies :- new_residential_building(B).
r1: violation <= new_residential_building(B), not overheating_info_given_to_owner(B).
