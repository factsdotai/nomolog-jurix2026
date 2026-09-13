% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 401b78143790f7d1
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant avg_height_crawl_space_0_8_metres
applies :- new_building(NewBuilding), crawl_space(CrawlSpace).
obligation_met :- avg_height_crawl_space_0_8_metres >= 0.
r1: violation <= new_building(NewBuilding), crawl_space(CrawlSpace), not obligation_met.
