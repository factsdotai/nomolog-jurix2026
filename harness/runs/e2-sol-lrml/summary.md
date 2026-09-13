# Run e2-sol-lrml — arm=lrml model=openai:gpt-5.6-sol k=30

- **comparability / original**: n=51 · case-acc 44.5% · exact-suite 23.5%
- **comparability / perturbed**: n=51 · case-acc 46.2% · exact-suite 29.4%
- **exception / original**: n=20 · case-acc 22.8% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 22.8% · exact-suite 0.0%

Failure modes: runtime_reject=16, verdict_mismatch=99
- stratum **exception**: n=40 · case-acc 22.8% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 43.4% · exact-suite 24.4%
- stratum **priority**: n=40 · case-acc 22.8% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 39.1% · exact-suite 23.5%
