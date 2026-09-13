% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b59f33ce096a83bd
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- crawl_space(CrawlSpace), new_building(CrawlSpace).
obligation_met(CrawlSpace) :- crawl_space(CrawlSpace), average_height(CrawlSpace, CrawlSpaceAverageHeight), CrawlSpaceAverageHeight >= 800.
r1: violation <= crawl_space(CrawlSpace), new_building(CrawlSpace), not obligation_met(CrawlSpace).
