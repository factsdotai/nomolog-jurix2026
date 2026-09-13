applies :- building(B).
r1: violation <= building(B), primary_energy_rate_measured(B, R), target_primary_energy_rate(B, T), R > T.
r2: violation <= building(B), emission_rate_measured(B, E), target_emission_rate(B, T), E > T.
