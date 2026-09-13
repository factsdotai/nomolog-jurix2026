% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 15199848ee0145e2
applies :- new_building(building), crawl_space(CrawlSpace, building).
obligation_met(CrawlSpace) :- avg_height(CrawlSpace, CrawlSpaceAvgHeight), CrawlSpaceAvgHeight >= 800.
r1: violation <= new_building(building), crawl_space(CrawlSpace, building), not obligation_met(CrawlSpace).
