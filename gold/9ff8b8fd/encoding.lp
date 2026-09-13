% Dwelling fabric energy efficiency rate must not exceed its target rate.
applies :- dwelling(D).
r1: violation <= dwelling(D), fabric_energy_efficiency_rate(D, R), target_fabric_energy_efficiency_rate(D, T), R > T.
