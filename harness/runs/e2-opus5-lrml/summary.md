# Run e2-opus5-lrml — arm=lrml model=anthropic:claude-opus-5 k=30

- **comparability / original**: n=51 · case-acc 58.3% · exact-suite 37.3%
- **comparability / perturbed**: n=51 · case-acc 59.1% · exact-suite 41.2%
- **exception / original**: n=20 · case-acc 34.2% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 33.3% · exact-suite 0.0%

Failure modes: verdict_mismatch=102
- stratum **exception**: n=40 · case-acc 33.8% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 57.6% · exact-suite 39.5%
- stratum **priority**: n=40 · case-acc 33.8% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 52.2% · exact-suite 29.4%
