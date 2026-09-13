% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 071b97754e6cf38a
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- foundation_drainage(FoundationDrainage).
obligation_met(FoundationDrainage) :- foundation_drainage(FoundationDrainage), flows_away_from_property(FoundationDrainage), not neg_scope_1.
r1: violation <= foundation_drainage(FoundationDrainage), not obligation_met(FoundationDrainage).
neg_scope_1 :- foundation_drainage(FoundationDrainage), causes_problems_to_sewer_systems(FoundationDrainage).
