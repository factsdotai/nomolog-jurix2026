% Building primary energy rate and emission rate (measured air permeability)
% must not exceed their respective targets.
applies :- building(B).
r1: violation <= building(B), primary_energy_rate_measured(B, R), target_primary_energy_rate(B, T), R > T.
r2: violation <= building(B), emission_rate_measured(B, R), target_emission_rate(B, T), R > T.
