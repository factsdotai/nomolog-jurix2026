% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8e418fda9d891a44
applies :- building_fabric(building).
obligation_met :- thermal_bridging_limited(building).
r1: violation <= building_fabric(building), not obligation_met.
