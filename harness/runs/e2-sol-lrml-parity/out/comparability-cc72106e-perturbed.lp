% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7270bc8224a574e6
applies :- crawl_space(CrawlSpace), building(Building), new_building(Building), part_of(CrawlSpace, Building).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), avg_height(CrawlSpace, CrawlSpaceAvgHeight), CrawlSpaceAvgHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), building(Building), new_building(Building), part_of(CrawlSpace, Building), not obligation_met(CrawlSpace).
