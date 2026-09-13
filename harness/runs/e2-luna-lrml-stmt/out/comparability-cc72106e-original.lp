% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8064198a19196d5d
applies :- crawl_space(CrawlSpace), new_building(NewBuilding).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), new_building(NewBuilding), not obligation_met(CrawlSpace).
