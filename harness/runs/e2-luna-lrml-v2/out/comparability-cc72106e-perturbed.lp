% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 34197823f6a12c92
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant avg_height_crawl_space
applies :- new_building(building), crawl_space(crawl_space, building).
obligation_met :- avg_height_crawl_space >= 800.
r1: violation <= new_building(building), crawl_space(crawl_space, building), not obligation_met.
