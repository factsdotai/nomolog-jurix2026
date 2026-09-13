% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: eaffd9e6b2009f67
% n_statements: 3  n_overrides: 2  dangling: 0
applies :- balcony(Balcony), residential_building(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000.
obligation_met(Balcony) :- balcony(Balcony), class_a1_or_a2(Balcony).
r1: violation <= balcony(Balcony), residential_building(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000, not obligation_met(Balcony).
r2: exempt_r2 <= balcony(Balcony), masonry_cavity_tray(Balcony).
#conflict violation, exempt_r2.
r2 > r1.
r3: exempt_r3 <= balcony(Balcony), firestopping_required(Balcony).
#conflict violation, exempt_r3.
r3 > r1.
