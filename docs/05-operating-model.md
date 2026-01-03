# Operating Model

## End-to-end model
The Cloud Security Service operates in a continuous lifecycle:

- **Plan:** roadmap, backlog grooming, risk assessment.
- **Build:** controls as code, policy updates, detection engineering.
- **Run:** monitoring, incident response, compliance reporting.
- **Improve:** retrospectives, KPI review, maturity evolution.

## Diagram
See the lifecycle model diagram: [`22-diagrams/security-operating-model.mmd`](22-diagrams/security-operating-model.mmd)

## Guiding behavior
**Security should be boring, predictable, measurable.** We avoid hero culture and rely on documented processes,
repeatable controls, and shared accountability.

## Ceremonies and cadence
| Ceremony | Cadence | Owner | Outputs |
| --- | --- | --- | --- |
| Weekly ops review | Weekly | Service Manager | KPI deltas, top risks, open incidents |
| Monthly service review | Monthly | Service Manager | roadmap updates, stakeholder feedback |
| Quarterly risk review | Quarterly | Risk Owner | risk register updates, exception renewals |
| Annual audit readiness | Annual | Compliance Lead | evidence packs, audit schedule |

## Escalation paths
- **SEV1/SEV2 incidents:** immediate escalation to Incident Commander and Service Manager.
- **Policy exceptions:** escalate to risk owner when exceptions exceed 90 days or repeat.
- **Critical control failures:** escalate to platform leadership within 24 hours.

## No hero culture
- Incidents require rotation-based on-call coverage.
- Postmortems focus on system fixes, not individual blame.
- Repeated manual fixes are converted into backlog items.

## Related docs
- Metrics & KPIs: [`07-metrics-and-kpis.md`](07-metrics-and-kpis.md)
- Incident response: [`11-incident-response.md`](11-incident-response.md)
- Roadmap & maturity: [`08-roadmap-and-maturity.md`](08-roadmap-and-maturity.md)
