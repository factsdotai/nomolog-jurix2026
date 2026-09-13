% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a19039a20e320106
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- crawl_space(CrawlSpace), building(CrawlSpace, CrawlSpaceBuilding), new_building(CrawlSpaceBuilding).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), building(CrawlSpace, CrawlSpaceBuilding), new_building(CrawlSpaceBuilding), not obligation_met(CrawlSpace).
