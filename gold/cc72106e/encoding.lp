% New building: crawl space height on average >= 0.8m (800mm).
% Modeling: "on average" folded into the measured property avg_height.
applies :- new_building(B), crawl_space(C, B).
r1: violation <= new_building(B), crawl_space(C, B), avg_height(C, H), H < 800.
