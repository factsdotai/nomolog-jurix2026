% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d637e55d59c18a14
applies :- crawl_space(CrawlSpace), building(CrawlSpace, CrawlSpaceBuilding), new_building(CrawlSpaceBuilding).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), avg_height(CrawlSpace, CrawlSpaceAvgHeight), CrawlSpaceAvgHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), building(CrawlSpace, CrawlSpaceBuilding), new_building(CrawlSpaceBuilding), not obligation_met(CrawlSpace).
