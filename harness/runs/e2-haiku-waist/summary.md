# Run e2-haiku-waist — arm=waist model=anthropic:claude-haiku-4-5 k=30

- **comparability / original**: n=51 · case-acc 87.9% · exact-suite 70.6%
- **comparability / perturbed**: n=51 · case-acc 90.3% · exact-suite 76.5%
- **exception / original**: n=20 · case-acc 67.5% · exact-suite 25.0%
- **exception / perturbed**: n=20 · case-acc 86.8% · exact-suite 45.0%

Failure modes: parse_failure=1, runtime_reject=2, verdict_mismatch=50
- stratum **exception**: n=40 · case-acc 77.2% · exact-suite 35.0%
- stratum **necessity**: n=86 · case-acc 89.3% · exact-suite 73.3%
- stratum **priority**: n=40 · case-acc 77.2% · exact-suite 35.0%
- stratum **threshold**: n=34 · case-acc 88.6% · exact-suite 73.5%
