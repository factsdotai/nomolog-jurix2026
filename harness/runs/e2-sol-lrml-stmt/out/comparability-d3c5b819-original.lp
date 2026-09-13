% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b417cc3392bb5d8f
applies :- sewer(Sewer), installed_in_ground(Sewer).
obligation_met(Sewer) :- sewer(Sewer), withstands_soil_load(Sewer), withstands_soil_corrosion(Sewer), withstands_soil_subsidence(Sewer).
r1: violation <= sewer(Sewer), installed_in_ground(Sewer), not obligation_met(Sewer).
