% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f7175a6220f23669
applies :- new_building(building), crawl_space(CrawlSpace, building).
obligation_met(CrawlSpace) :- average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= new_building(building), crawl_space(CrawlSpace, building), not obligation_met(CrawlSpace).
