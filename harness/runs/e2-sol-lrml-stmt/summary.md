# Run e2-sol-lrml-stmt — arm=lrml-stmt model=openai:gpt-5.6-sol k=30

- **comparability / original**: n=51 · case-acc 60.3% · exact-suite 41.2%
- **comparability / perturbed**: n=51 · case-acc 51.0% · exact-suite 31.4%
- **exception / original**: n=20 · case-acc 32.5% · exact-suite 10.0%
- **exception / perturbed**: n=20 · case-acc 36.0% · exact-suite 10.0%

Failure modes: runtime_reject=13, verdict_mismatch=88
- stratum **exception**: n=40 · case-acc 34.2% · exact-suite 10.0%
- stratum **necessity**: n=86 · case-acc 52.2% · exact-suite 32.6%
- stratum **priority**: n=40 · case-acc 34.2% · exact-suite 10.0%
- stratum **threshold**: n=34 · case-acc 53.3% · exact-suite 35.3%
