# Run e2-haiku-lrml-parity — arm=lrml-parity model=anthropic:claude-haiku-4-5 k=30

- **comparability / original**: n=51 · case-acc 43.7% · exact-suite 27.5%
- **comparability / perturbed**: n=51 · case-acc 44.1% · exact-suite 27.5%
- **exception / original**: n=20 · case-acc 28.1% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 25.4% · exact-suite 0.0%

Failure modes: parse_failure=1, runtime_reject=16, verdict_mismatch=97
- stratum **exception**: n=40 · case-acc 26.8% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 48.3% · exact-suite 30.2%
- stratum **priority**: n=40 · case-acc 26.8% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 29.9% · exact-suite 17.6%
