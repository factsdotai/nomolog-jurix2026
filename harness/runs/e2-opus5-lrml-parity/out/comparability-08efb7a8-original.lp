% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 35339a7509723777
applies :- cost_estimate(CostEstimate).
obligation_met(CostEstimate) :- cost_estimate(CostEstimate), consistent_methodology(CostEstimate), cost_comparison(CostEstimate).
r1: violation <= cost_estimate(CostEstimate), not obligation_met(CostEstimate).
