# Run e2-sol-lrml-v2 — arm=lrml-v2 model=openai:gpt-5.6-sol k=30

- **comparability / original**: n=51 · case-acc 32.4% · exact-suite 11.8%
- **comparability / perturbed**: n=51 · case-acc 32.8% · exact-suite 9.8%
- **exception / original**: n=20 · case-acc 17.5% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 14.0% · exact-suite 0.0%

Failure modes: runtime_reject=24, verdict_mismatch=107
- stratum **exception**: n=40 · case-acc 15.8% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 34.1% · exact-suite 10.5%
- stratum **priority**: n=40 · case-acc 15.8% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 23.4% · exact-suite 5.9%
