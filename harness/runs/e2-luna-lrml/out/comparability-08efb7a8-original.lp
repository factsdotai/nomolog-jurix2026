% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 42ee60f96ef9cd3e
applies :- cost_comparison(CostComparison).
obligation_met(CostComparison) :- cost_comparison(CostComparison), consistent_methodology(CostComparison).
r1: violation <= cost_comparison(CostComparison), not obligation_met(CostComparison).
