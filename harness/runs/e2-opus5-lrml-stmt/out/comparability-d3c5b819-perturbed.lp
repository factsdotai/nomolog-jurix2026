% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c17e289fa15b497d
applies :- sewer(Sewer), installed_in_ground(Sewer).
applies :- manhole(Manhole), sewer(Sewer), installed_in_ground(Sewer).
obligation_met(Sewer) :- sewer(Sewer), withstands_soil_load(Sewer), withstands_soil_corrosion(Sewer), withstands_soil_subsidence(Sewer).
r1: violation <= sewer(Sewer), installed_in_ground(Sewer), not obligation_met(Sewer).
r2: violation <= manhole(Manhole), sewer(Sewer), installed_in_ground(Sewer), not obligation_met(Sewer).
