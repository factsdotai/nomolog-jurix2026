% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d6399ebc7e057910
applies :- lift_used(LiftUsed), fire_in_building(FireInBuilding).
r1: violation <= lift_used(LiftUsed), fire_in_building(FireInBuilding), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(PartOfEvacuationPlan), appropriately_sited(AppropriatelySited), fire_safety_features(FireSafetyFeatures).
