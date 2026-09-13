% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a7d845fc51cb5cf7
applies :- crawl_space(CrawlSpace), new_building(building), crawl_space(CrawlSpace, building).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), avg_height(CrawlSpace, CrawlSpaceAvgHeight), CrawlSpaceAvgHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), new_building(building), crawl_space(CrawlSpace, building), not obligation_met(CrawlSpace).
