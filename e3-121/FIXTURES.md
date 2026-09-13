# E3 fixtures: Catala sec. 121 tests -> Nomolog cases (decision: Option 1, 2026-08-10)

Source: `CatalaLang/catala-examples` @ HEAD, `us_tax_code/section_121.catala_en`
(482 lines) + `tests/test_section_121.catala_en` (6 assertions). All 6 transplanted:
Tests 1-4 directly; Tests 5-6 via their `requirements_met` component (their money
assertions land in the out-of-fragment stratum, below).

## Pre-aggregation arithmetic (frontend, deterministic, done offline)

Window = 5 years ending at `date_of_sale_or_exchange` (2021-01-01) -> [2016-01-01,
2021-01-01]. Durations are day counts of period ∩ window:

| Catala period fixture | raw days | clipped to window |
|---|---|---|
| `period_four_years_recent` (2017-01-01 → 2021-01-01) | 1461 | **1461** |
| `period_one_year_recent` (2019-01-01 → 2020-01-01) | 365 | **365** |
| `period_two_years_middle` (2015-01-01 → 2017-01-02) | 732 | **367** |

Threshold: "periods aggregating 2 years or more" = **730 days**.

## Test mapping

| Catala assertion | ownership | use (aggregated) | expected | Nomolog case |
|---|---|---|---|---|
| Test1 `requirements_met` | 1461 | 1461 | met | `catala_test1` (applies, ok) |
| Test2 `not requirements_met` | 1461 | 365 | not met | `catala_test2` (applies, VIOLATION) |
| Test3 `not requirements_met` | 1461 | 367 (clipped!) | not met | `catala_test3` (applies, VIOLATION) |
| Test4 `requirements_met` | 1461 | 367+365=732 | met | `catala_test4` (applies, ok) |
| Test5 `excluded = $250,000` | person_ok_1: 1461/1461 | met | requirements component only: `catala_test5`; money cap **out-of-fragment** |
| Test6 `excluded = $350,000` | person_ok_2: 1461/732 | met | requirements component only: `catala_test6`; money cap + joint return **out-of-fragment** |

Supplementary (ours, not Catala's): `supplementary_lookback_blocks` exercises the
sec. 121(b)(3) carve-out as a superior defeasible rule (defeat, not a guard);
`supplementary_no_claim_vacuous` pins the verdict convention.

## What lives where (the comparison)

| Machinery | Catala | Nomolog |
|---|---|---|
| Period lists, date arithmetic, 5-year window clipping | in-language (`aggregate_periods_from_last_five_years`, `Duration.sum`) | frontend (this file) |
| Money amounts, sec. 121(b) caps, joint returns | in-language | out-of-fragment stratum |
| Two-year default + lookback exception | encoded (default logic) | encoded (defeasible rule + superiority) |
| Verdict | `requirements_met` boolean | (applies, violation) pair |

Verification: `python3 ../harness/waist_eval.py check ../e3-121` (from `e3-121/`'s parent).
