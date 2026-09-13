% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fee063b2e0edd034
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(toilet_seat).
obligation_met :- width(FreeSpace, FreeSpaceWidth), free_space(FreeSpace, FreeSpaceWidth), side_of(FreeSpace, toilet_seat), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(toilet_seat), not obligation_met.
