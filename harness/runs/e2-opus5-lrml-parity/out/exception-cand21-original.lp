% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bdad9c831019411c
applies :- corner_door_pair(CornerDoorPair).
obligation_met(CornerDoorPair) :- corner_door_pair(CornerDoorPair), edge_corner_distance(CornerDoorPair, CornerDoorPairEdgeCornerDistance), CornerDoorPairEdgeCornerDistance >= 800.
obligation_met(CornerDoorPair) :- corner_door_pair(CornerDoorPair), turning_circle_outside(CornerDoorPair, CornerDoorPairTurningCircleOutside), CornerDoorPairTurningCircleOutside >= 1500.
r1: violation <= corner_door_pair(CornerDoorPair), not obligation_met(CornerDoorPair).
