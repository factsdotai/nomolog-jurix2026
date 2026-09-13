% Fire compartments partitioned where necessary (fire/smoke spread, evacuation,
% rescue). open-texture: partitioning_necessary.
applies :- building(B), partitioning_necessary(B).
r1: violation <= building(B), partitioning_necessary(B), not partitioned_into_compartments(B).
