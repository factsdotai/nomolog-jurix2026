% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8dd0580a0b2bdc1d
% term-flattened: nested call -> constant avg_height_crawl_space_height
applies :- new_building(building), crawl_space(crawl_space, building).
obligation_met :- avg_height_crawl_space_height >= 800.
r1: violation <= new_building(building), crawl_space(crawl_space, building), not obligation_met.
