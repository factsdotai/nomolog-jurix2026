# Run e2-opus5-lrml-parity — arm=lrml-parity model=anthropic:claude-opus-5 k=30

- **comparability / original**: n=51 · case-acc 59.9% · exact-suite 41.2%
- **comparability / perturbed**: n=51 · case-acc 61.9% · exact-suite 41.2%
- **exception / original**: n=20 · case-acc 42.1% · exact-suite 20.0%
- **exception / perturbed**: n=20 · case-acc 40.4% · exact-suite 20.0%

Failure modes: runtime_reject=2, verdict_mismatch=90
- stratum **exception**: n=40 · case-acc 41.2% · exact-suite 20.0%
- stratum **necessity**: n=86 · case-acc 57.8% · exact-suite 39.5%
- stratum **priority**: n=40 · case-acc 41.2% · exact-suite 20.0%
- stratum **threshold**: n=34 · case-acc 56.5% · exact-suite 38.2%
