% Heat-loss calculation uses the design value for the air leakage rate figure.
applies :- heat_loss_calculation(C).
r1: violation <= heat_loss_calculation(C), not uses_design_air_leakage_value(C).
