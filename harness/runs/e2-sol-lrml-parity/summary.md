# Run e2-sol-lrml-parity — arm=lrml-parity model=openai:gpt-5.6-sol k=30

- **comparability / original**: n=51 · case-acc 51.8% · exact-suite 37.3%
- **comparability / perturbed**: n=51 · case-acc 55.5% · exact-suite 35.3%
- **exception / original**: n=20 · case-acc 38.6% · exact-suite 10.0%
- **exception / perturbed**: n=20 · case-acc 42.1% · exact-suite 15.0%

Failure modes: runtime_reject=12, verdict_mismatch=88
- stratum **exception**: n=40 · case-acc 40.4% · exact-suite 12.5%
- stratum **necessity**: n=86 · case-acc 52.2% · exact-suite 36.0%
- stratum **priority**: n=40 · case-acc 40.4% · exact-suite 12.5%
- stratum **threshold**: n=34 · case-acc 46.7% · exact-suite 29.4%
