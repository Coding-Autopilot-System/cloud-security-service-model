# Service Definition

## Mission
Deliver a stable, auditable Cloud Security Service that enables secure, compliant, and resilient cloud workloads across
Azure and hybrid environments.

## Outcomes
- Measurable policy compliance and configuration hygiene.
- Reduced risk exposure through timely detection and remediation.
- Audit-ready evidence with defined ownership and retention.

## Consumers
- Application teams
- Platform engineering
- Security operations
- Risk and compliance

## Service boundaries
**We do**
- Define and manage security policy-as-code.
- Operate detection and alerting with a tuning cadence.
- Coordinate incident response and post-incident learning.
- Provide audit evidence and risk reporting.

**We don’t**
- Own application runtime operations.
- Create business application code.
- Approve business risk on behalf of risk owners.

## Interfaces
- **Cloud Platform Engineering:** landing zone standards, network patterns, identity baseline.
- **SOC / SecOps:** alert triage, incident response workflows, detection tuning.
- **Enterprise Risk & Compliance:** risk register, audit evidence, policy exceptions.
- **App teams:** policy exceptions, onboarding, remediation tasks.
- **ITSM:** change control, service requests, incident records.

## RACI

| Activity | Responsible | Accountable | Consulted | Informed |
| --- | --- | --- | --- | --- |
| Policy-as-code development | Cloud Security Service | Service Manager | Platform Engineering | App Teams |
| Policy exception approval | Risk Owner | CISO Delegate | Service Manager | App Teams |
| Incident response coordination | SecOps | Incident Commander | Service Manager | Stakeholders |
| Logging/SIEM onboarding | Cloud Security Service | Service Manager | Platform Engineering | App Teams |
| Audit evidence collection | Cloud Security Service | Service Manager | Compliance | Risk Owners |

## Intake model
- **Service requests:** onboarding, logging, access reviews, baseline validations.
- **Exceptions:** policy exceptions, risk acceptance, compensating controls.
- **Changes:** standard, normal, emergency change paths.
- **Incidents:** triage, containment, eradication, recovery, lessons learned.

## Related docs
- Operating model: [`05-operating-model.md`](05-operating-model.md)
- Exception handling: [`13-exception-handling.md`](13-exception-handling.md)
- Change management: [`12-change-and-release.md`](12-change-and-release.md)
