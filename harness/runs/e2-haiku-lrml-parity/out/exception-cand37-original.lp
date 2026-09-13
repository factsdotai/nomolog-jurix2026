% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 52634b50400ca168
% term-flattened: nested call -> constant less_than_compartment_wall_mid_span_defl
applies :- compartment_wall_mid_span(CompartmentWallMidSpan), not neg_scope_1.
obligation_met(CompartmentWallMidSpan) :- compartment_wall_mid_span(CompartmentWallMidSpan), deflection_allowance(CompartmentWallMidSpan, 40).
r1: violation <= compartment_wall_mid_span(CompartmentWallMidSpan), not neg_scope_1, not obligation_met(CompartmentWallMidSpan).
neg_scope_1 :- compartment_wall_mid_span(CompartmentWallMidSpan), justified_deflection_value(CompartmentWallMidSpan, less_than_compartment_wall_mid_span_defl).
