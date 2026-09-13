# Run e2-luna-lrml-stmt — arm=lrml-stmt model=openai:gpt-5.6-luna k=30

- **comparability / original**: n=51 · case-acc 59.5% · exact-suite 35.3%
- **comparability / perturbed**: n=51 · case-acc 59.1% · exact-suite 41.2%
- **exception / original**: n=20 · case-acc 28.1% · exact-suite 10.0%
- **exception / perturbed**: n=20 · case-acc 29.8% · exact-suite 5.0%

Failure modes: parse_failure=2, runtime_reject=19, verdict_mismatch=79
- stratum **exception**: n=40 · case-acc 28.9% · exact-suite 7.5%
- stratum **necessity**: n=86 · case-acc 57.8% · exact-suite 38.4%
- stratum **priority**: n=40 · case-acc 28.9% · exact-suite 7.5%
- stratum **threshold**: n=34 · case-acc 45.1% · exact-suite 20.6%
