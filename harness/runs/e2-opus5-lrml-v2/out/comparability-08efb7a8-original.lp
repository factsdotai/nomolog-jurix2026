% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 35339a7509723777
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- cost_estimate(CostEstimate).
obligation_met(CostEstimate) :- cost_estimate(CostEstimate), consistent_methodology(CostEstimate), cost_comparison(CostEstimate).
r1: violation <= cost_estimate(CostEstimate), not obligation_met(CostEstimate).
