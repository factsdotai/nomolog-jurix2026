% Quantifier carve-out ("except a top storey" restricts the domain) => body guard,
% not defeat. Lobby-or-corridor disjunction via helper.
applies :- phased_evacuation_building(B).
r1: violation <= phased_evacuation_building(B), storey(S, B), not top_storey(S), not protected_approach(S).
protected_approach(S) :- protected_lobby(S).
protected_approach(S) :- protected_corridor(S).
