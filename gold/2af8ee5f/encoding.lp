% Building work in kitchen/bathroom => existing fans (incl. cooker hoods where
% they extract outside) retained or replaced.
applies :- building_work(W), in_kitchen_or_bathroom(W).
relevant_fan(F) :- existing_fan(F).
relevant_fan(F) :- cooker_hood(F), extracts_outside(F).
kept(F) :- retained(F).
kept(F) :- replaced(F).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), relevant_fan(F), not kept(F).
