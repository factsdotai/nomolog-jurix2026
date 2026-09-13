% Rebuttable default VALUE: the default assumption (40mm) is a defeasible conclusion,
% defeated by a justified assessment; strict rules consume whichever assumption stands.
applies :- compartment_wall_mid_span(W).
r1: assumed_deflection_default <= compartment_wall_mid_span(W).
r2: assessed_deflection_applies <= compartment_wall_mid_span(W), justified_deflection_value(W, V).
#conflict assumed_deflection_default, assessed_deflection_applies.
r2 > r1.
violation :- compartment_wall_mid_span(W), assumed_deflection_default, deflection_allowance(W, A), A < 40.
violation :- compartment_wall_mid_span(W), assessed_deflection_applies, justified_deflection_value(W, V), deflection_allowance(W, A), A < V.
