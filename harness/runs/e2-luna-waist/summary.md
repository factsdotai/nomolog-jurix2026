# Run e2-luna-waist — arm=waist model=openai:gpt-5.6-luna k=30

- **comparability / original**: n=51 · case-acc 92.7% · exact-suite 72.5%
- **comparability / perturbed**: n=51 · case-acc 95.1% · exact-suite 80.4%
- **exception / original**: n=20 · case-acc 77.2% · exact-suite 50.0%
- **exception / perturbed**: n=20 · case-acc 65.8% · exact-suite 35.0%

Failure modes: verdict_mismatch=47
- stratum **exception**: n=40 · case-acc 71.5% · exact-suite 42.5%
- stratum **necessity**: n=86 · case-acc 93.2% · exact-suite 74.4%
- stratum **priority**: n=40 · case-acc 71.5% · exact-suite 42.5%
- stratum **threshold**: n=34 · case-acc 92.9% · exact-suite 73.5%
