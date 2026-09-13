# Run e2-haiku-lrml-v2 — arm=lrml-v2 model=anthropic:claude-haiku-4-5 k=30

- **comparability / original**: n=51 · case-acc 49.8% · exact-suite 29.4%
- **comparability / perturbed**: n=51 · case-acc 50.2% · exact-suite 31.4%
- **exception / original**: n=20 · case-acc 21.9% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 22.8% · exact-suite 0.0%

Failure modes: runtime_reject=17, verdict_mismatch=94
- stratum **exception**: n=40 · case-acc 22.4% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 52.0% · exact-suite 31.4%
- stratum **priority**: n=40 · case-acc 22.4% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 44.0% · exact-suite 26.5%
