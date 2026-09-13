% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4ea747a361343dee
% term-flattened: nested call -> constant avg_height_crawl_space
applies :- new_building(NewBuilding), crawl_space(CrawlSpace).
obligation_met :- avg_height_crawl_space >= 800.
r1: violation <= new_building(NewBuilding), crawl_space(CrawlSpace), not obligation_met.
