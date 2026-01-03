# Metrics and KPIs

## KPI catalog
| KPI | Definition | Formula | Data Sources | Target | Owner | Cadence |
| --- | --- | --- | --- | --- | --- | --- |
| Policy compliance % | Percentage of resources compliant with baseline policies | Compliant resources / total in scope | Policy compliance reports | ≥ 95% | Service Manager | Weekly |
| MTTR for critical findings | Time to remediate critical issues | Avg remediation time (days) | Ticketing/ITSM | ≤ 7 days | Remediation Lead | Weekly |
| Time-to-detect (TTD) | Time from event to detection | Avg detection time | SIEM | ≤ 15 minutes | SecOps | Weekly |
| Time-to-contain (TTC) | Time from detection to containment | Avg containment time | Incident records | ≤ 4 hours | Incident Commander | Weekly |
| Privileged access exposure | Standing admins and PIM activations | # standing admins + % JIT | IAM/PIM reports | 0 standing admins | Identity Lead | Monthly |
| Misconfiguration trend rate | Net change in policy violations | (New violations - remediated) / period | Policy compliance | Trending down | Service Manager | Monthly |
| Backup restore test success rate | Successful restore tests | Successful tests / total tests | Backup reports | ≥ 95% | Platform Ops | Quarterly |

## SLA/SLO targets (service-level)
| Service area | SLA/SLO | Definition | Target | Owner |
| --- | --- | --- | --- | --- |
| Incident response | SLO | SEV1 acknowledgment time | ≤ 15 minutes | Incident Commander |
| Incident response | SLO | SEV1 containment time | ≤ 4 hours | Incident Commander |
| Policy service | SLA | Baseline policy update delivery | ≤ 10 business days | Service Manager |
| Logging onboarding | SLA | New workload log onboarding | ≤ 5 business days | Logging Lead |
| Exception handling | SLA | Exception review turnaround | ≤ 10 business days | Risk Owner |

## Sample dashboard (mock)
| Metric | Current | Target | Status |
| --- | --- | --- | --- |
| Policy compliance % | 96.4% | ≥ 95% | On track |
| MTTR (critical) | 6.2 days | ≤ 7 days | On track |
| TTD | 12 min | ≤ 15 min | On track |
| TTC | 5.5 hours | ≤ 4 hours | Needs attention |
| Privileged access exposure | 2 standing admins | 0 | Needs attention |
| Misconfiguration trend | -4% | Decreasing | On track |
| Backup restore tests | 94% | ≥ 95% | At risk |

## Metrics anti-patterns
- Reporting only activity (tickets closed) instead of outcomes.
- Averaging away SEV1/SEV2 incidents without severity weighting.
- No target or owner, leading to unowned metrics.
- Dashboards that are updated manually and inconsistently.

## Related docs
- Operating model: [`05-operating-model.md`](05-operating-model.md)
- Roadmap & maturity: [`08-roadmap-and-maturity.md`](08-roadmap-and-maturity.md)
