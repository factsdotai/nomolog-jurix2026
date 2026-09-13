% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1cc6b73567b5a03b
applies :- building(Building), new_building(Building), crawl_space(CrawlSpace).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= building(Building), new_building(Building), crawl_space(CrawlSpace), not obligation_met(CrawlSpace).
