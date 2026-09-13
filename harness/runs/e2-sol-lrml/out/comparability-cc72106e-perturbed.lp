% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2cd51a46bfae950a
applies :- building(Building), new_building(Building), crawl_space(CrawlSpace), part_of(CrawlSpace, Building).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= building(Building), new_building(Building), crawl_space(CrawlSpace), part_of(CrawlSpace, Building), not obligation_met(CrawlSpace).
