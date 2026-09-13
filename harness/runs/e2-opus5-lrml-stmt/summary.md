# Run e2-opus5-lrml-stmt — arm=lrml-stmt model=anthropic:claude-opus-5 k=30

- **comparability / original**: n=51 · case-acc 60.7% · exact-suite 39.2%
- **comparability / perturbed**: n=51 · case-acc 63.2% · exact-suite 45.1%
- **exception / original**: n=20 · case-acc 35.1% · exact-suite 10.0%
- **exception / perturbed**: n=20 · case-acc 37.7% · exact-suite 10.0%

Failure modes: verdict_mismatch=95
- stratum **exception**: n=40 · case-acc 36.4% · exact-suite 10.0%
- stratum **necessity**: n=86 · case-acc 59.0% · exact-suite 40.7%
- stratum **priority**: n=40 · case-acc 36.4% · exact-suite 10.0%
- stratum **threshold**: n=34 · case-acc 58.7% · exact-suite 41.2%
