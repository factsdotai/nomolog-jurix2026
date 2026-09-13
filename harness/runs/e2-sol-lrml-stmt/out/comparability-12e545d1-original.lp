% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 60e21071829b8af2
applies :- dwelling(dwelling), exposed_facade(facade1, dwelling), exposed_facade(facade2, dwelling), facade1 != facade2.
obligation_met :- similar_ventilator_area(facade1, facade2).
r1: violation <= dwelling(dwelling), exposed_facade(facade1, dwelling), exposed_facade(facade2, dwelling), facade1 != facade2, not obligation_met.
