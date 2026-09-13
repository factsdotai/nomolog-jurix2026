# Run e2-haiku-lrml-stmt — arm=lrml-stmt model=anthropic:claude-haiku-4-5 k=30

- **comparability / original**: n=51 · case-acc 44.1% · exact-suite 25.5%
- **comparability / perturbed**: n=51 · case-acc 44.1% · exact-suite 29.4%
- **exception / original**: n=20 · case-acc 27.2% · exact-suite 0.0%
- **exception / perturbed**: n=20 · case-acc 22.8% · exact-suite 0.0%

Failure modes: parse_failure=2, runtime_reject=21, verdict_mismatch=91
- stratum **exception**: n=40 · case-acc 25.0% · exact-suite 0.0%
- stratum **necessity**: n=86 · case-acc 49.3% · exact-suite 30.2%
- stratum **priority**: n=40 · case-acc 25.0% · exact-suite 0.0%
- stratum **threshold**: n=34 · case-acc 29.9% · exact-suite 14.7%
