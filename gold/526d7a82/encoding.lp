% Wet room structures rigid enough that thermal/moisture movements do not
% damage waterproofing or surfaces. open-texture: rigidity_adequate.
applies :- wet_room(R).
r1: violation <= wet_room(R), structure_of(S, R), not rigidity_adequate(S).
