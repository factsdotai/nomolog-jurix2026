% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1061175436918f21
applies :- new_building(NewBuilding), crawl_space(CrawlSpace), within(CrawlSpace, NewBuilding).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= new_building(NewBuilding), crawl_space(CrawlSpace), within(CrawlSpace, NewBuilding), not obligation_met(CrawlSpace).
