# Run e2-haiku-lrml — arm=lrml model=anthropic:claude-haiku-4-5 k=30

- **comparability / original**: n=51 · case-acc 43.7% · exact-suite 23.5%
- **comparability / perturbed**: n=51 · case-acc 44.5% · exact-suite 25.5%
- **exception / original**: n=20 · case-acc 17.5% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 20.2% · exact-suite 0.0%

Failure modes: parse_failure=2, runtime_reject=16, verdict_mismatch=99
- stratum **exception**: n=40 · case-acc 18.9% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 48.3% · exact-suite 26.7%
- stratum **priority**: n=40 · case-acc 18.9% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 34.8% · exact-suite 14.7%
