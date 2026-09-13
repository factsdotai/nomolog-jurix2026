% Results of all pressure tests, including failures, reported to the building
% control body.
applies :- pressure_test(T).
r1: violation <= pressure_test(T), not reported_to_bcb(T).
