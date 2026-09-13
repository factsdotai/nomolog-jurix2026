% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9251a91023f5b235
applies :- new_building(building), crawl_space(crawl_space, building), avg_height(crawl_space, height).
obligation_met :- height >= 800.
r1: violation <= new_building(building), crawl_space(crawl_space, building), avg_height(crawl_space, height), not obligation_met.
