% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e3ca31dcd576f7e6
applies :- new_building(NewBuilding), crawl_space(CrawlSpace).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), avg_height(CrawlSpace, CrawlSpaceAvgHeight), CrawlSpaceAvgHeight >= 800.
r1: violation <= new_building(NewBuilding), crawl_space(CrawlSpace), not obligation_met(CrawlSpace).
