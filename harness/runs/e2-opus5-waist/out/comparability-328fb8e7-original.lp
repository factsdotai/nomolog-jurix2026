applies :- pressure_test(T).
r1: violation <= pressure_test(T), not reported_to_bcb(T).
r2: violation <= pressure_test(T), test_failed(T), not reported_to_bcb(T).
