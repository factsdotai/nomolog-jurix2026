% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4bf5f2efa7d6fe1c
applies :- crawl_space(CrawlSpace), new_building(CrawlSpace).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), new_building(CrawlSpace), not obligation_met(CrawlSpace).
