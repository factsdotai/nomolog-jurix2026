% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 3156c226d5a9d264
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- cost_comparison(CostComparison).
obligation_met(CostComparison) :- cost_comparison(CostComparison), consistent_methodology(CostComparison).
r1: violation <= cost_comparison(CostComparison), not obligation_met(CostComparison).
