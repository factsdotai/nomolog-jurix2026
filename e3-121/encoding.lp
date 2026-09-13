% E3: US tax code sec. 121(a) -- exclusion of gain from sale of principal
% residence -- compiled into Nomolog at the fragment boundary.
%
% The folding line (ratified policy: "the survey aggregates, the norm
% compares"): ownership/use durations, aggregated over period lists and
% clipped to the 5-year window ending at the sale, are FRONTEND arithmetic
% (see FIXTURES.md); the norm receives them as measured properties. What
% remains in-language is sec. 121's normative core: the two-year default,
% and the lookback carve-out (sec. 121(b)(3)) as a superior defeasible rule.
% Threshold: "periods aggregating 2 years or more" = 730 days.

applies :- property_sale(S), exclusion_claimed(S).

r1: eligible <= property_sale(S), ownership_days_window(S, O), O >= 730, use_days_window(S, U), U >= 730.
r2: blocked <= property_sale(S), prior_121_sale_in_lookback(S).
#conflict eligible, blocked.
r2 > r1.

r3: violation <= property_sale(S), exclusion_claimed(S), not eligible.
