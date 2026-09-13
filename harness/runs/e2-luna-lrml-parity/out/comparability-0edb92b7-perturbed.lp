% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9887d698ab96ccc2
applies :- foundation_drainage(FoundationDrainage).
obligation_met(FoundationDrainage) :- foundation_drainage(FoundationDrainage), flows_away_from_property(FoundationDrainage), not neg_scope_1.
r1: violation <= foundation_drainage(FoundationDrainage), not obligation_met(FoundationDrainage).
neg_scope_1 :- foundation_drainage(FoundationDrainage), causes_problems_to_sewer_systems(FoundationDrainage).
