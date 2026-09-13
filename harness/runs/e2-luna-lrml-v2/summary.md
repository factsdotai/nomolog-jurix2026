# Run e2-luna-lrml-v2 — arm=lrml-v2 model=openai:gpt-5.6-luna k=30

- **comparability / original**: n=51 · case-acc 46.2% · exact-suite 31.4%
- **comparability / perturbed**: n=51 · case-acc 49.8% · exact-suite 33.3%
- **exception / original**: n=20 · case-acc 26.3% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 26.3% · exact-suite 0.0%

Failure modes: runtime_reject=16, verdict_mismatch=93
- stratum **exception**: n=40 · case-acc 26.3% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 49.8% · exact-suite 34.9%
- stratum **priority**: n=40 · case-acc 26.3% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 33.2% · exact-suite 17.6%
