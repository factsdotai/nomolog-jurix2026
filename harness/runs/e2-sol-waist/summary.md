# Run e2-sol-waist — arm=waist model=openai:gpt-5.6-sol k=30

- **comparability / original**: n=51 · case-acc 93.1% · exact-suite 74.5%
- **comparability / perturbed**: n=51 · case-acc 93.9% · exact-suite 78.4%
- **exception / original**: n=20 · case-acc 78.9% · exact-suite 65.0%
- **exception / perturbed**: n=20 · case-acc 73.7% · exact-suite 50.0%

Failure modes: verdict_mismatch=41
- stratum **exception**: n=40 · case-acc 76.3% · exact-suite 57.5%
- stratum **necessity**: n=86 · case-acc 92.2% · exact-suite 72.1%
- stratum **priority**: n=40 · case-acc 76.3% · exact-suite 57.5%
- stratum **threshold**: n=34 · case-acc 92.9% · exact-suite 73.5%
