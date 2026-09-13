applies :- building(B), phased_evacuation_building(B), storey(S, B), not top_storey(S).
r1: violation <= building(B), phased_evacuation_building(B), storey(S, B), not top_storey(S), not protected_lobby(S), not protected_corridor(S).
