# Run e2-luna-lrml — arm=lrml model=openai:gpt-5.6-luna k=30

- **comparability / original**: n=51 · case-acc 48.6% · exact-suite 27.5%
- **comparability / perturbed**: n=51 · case-acc 47.8% · exact-suite 25.5%
- **exception / original**: n=20 · case-acc 25.4% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 30.7% · exact-suite 0.0%

Failure modes: parse_failure=5, runtime_reject=15, verdict_mismatch=95
- stratum **exception**: n=40 · case-acc 28.1% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 49.5% · exact-suite 26.7%
- stratum **priority**: n=40 · case-acc 28.1% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 31.5% · exact-suite 14.7%
