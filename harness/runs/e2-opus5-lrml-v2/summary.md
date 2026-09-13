# Run e2-opus5-lrml-v2 — arm=lrml-v2 model=anthropic:claude-opus-5 k=30

- **comparability / original**: n=51 · case-acc 53.4% · exact-suite 33.3%
- **comparability / perturbed**: n=51 · case-acc 56.7% · exact-suite 39.2%
- **exception / original**: n=20 · case-acc 31.6% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 33.3% · exact-suite 5.0%

Failure modes: verdict_mismatch=104
- stratum **exception**: n=40 · case-acc 32.5% · exact-suite 2.5%
- stratum **necessity**: n=86 · case-acc 53.9% · exact-suite 37.2%
- stratum **priority**: n=40 · case-acc 32.5% · exact-suite 2.5%
- stratum **threshold**: n=34 · case-acc 47.8% · exact-suite 23.5%
