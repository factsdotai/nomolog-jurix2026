# Run e2-luna-lrml-parity — arm=lrml-parity model=openai:gpt-5.6-luna k=30

- **comparability / original**: n=51 · case-acc 59.9% · exact-suite 43.1%
- **comparability / perturbed**: n=51 · case-acc 58.3% · exact-suite 35.3%
- **exception / original**: n=20 · case-acc 32.5% · exact-suite 10.0%
- **exception / perturbed**: n=20 · case-acc 45.6% · exact-suite 20.0%

Failure modes: parse_failure=2, runtime_reject=13, verdict_mismatch=81
- stratum **exception**: n=40 · case-acc 39.0% · exact-suite 15.0%
- stratum **necessity**: n=86 · case-acc 58.0% · exact-suite 38.4%
- stratum **priority**: n=40 · case-acc 39.0% · exact-suite 15.0%
- stratum **threshold**: n=34 · case-acc 46.2% · exact-suite 23.5%
