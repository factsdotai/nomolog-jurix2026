% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cddd80c5071e1b6f
applies :- new_building(NewBuilding), crawl_space(CrawlSpace).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= new_building(NewBuilding), crawl_space(CrawlSpace), not obligation_met(CrawlSpace).
