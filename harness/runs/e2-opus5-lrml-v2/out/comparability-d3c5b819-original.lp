% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b417cc3392bb5d8f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- sewer(Sewer), installed_in_ground(Sewer).
obligation_met(Sewer) :- sewer(Sewer), withstands_soil_load(Sewer), withstands_soil_corrosion(Sewer), withstands_soil_subsidence(Sewer).
r1: violation <= sewer(Sewer), installed_in_ground(Sewer), not obligation_met(Sewer).
