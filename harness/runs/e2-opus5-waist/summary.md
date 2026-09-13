# Run e2-opus5-waist — arm=waist model=anthropic:claude-opus-5 k=30

- **comparability / original**: n=51 · case-acc 94.3% · exact-suite 82.4%
- **comparability / perturbed**: n=51 · case-acc 93.5% · exact-suite 78.4%
- **exception / original**: n=20 · case-acc 83.3% · exact-suite 50.0%
- **exception / perturbed**: n=20 · case-acc 77.2% · exact-suite 45.0%

Failure modes: verdict_mismatch=41
- stratum **exception**: n=40 · case-acc 80.3% · exact-suite 47.5%
- stratum **necessity**: n=86 · case-acc 92.7% · exact-suite 76.7%
- stratum **priority**: n=40 · case-acc 80.3% · exact-suite 47.5%
- stratum **threshold**: n=34 · case-acc 90.2% · exact-suite 76.5%
