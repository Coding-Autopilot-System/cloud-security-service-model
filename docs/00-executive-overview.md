# Executive Overview

## Purpose
The Cloud Security Service provides a repeatable, measurable security capability across Azure and hybrid environments.
It is operated as a product with clear ownership, service boundaries, and a lifecycle that prioritizes stability and
predictability.

## Audience
- Cloud Platform Services leadership
- Security leadership (CISO organization)
- Cloud engineering leads
- Audit and compliance stakeholders

## What success looks like
- Policy compliance remains above agreed targets.
- Incident response is consistent, measurable, and auditable.
- Controls as Code are deployed, tested, and monitored for drift.
- Service outcomes are reviewed on a regular cadence and improved.

## Assumptions
- The organization operates Azure and maintains hybrid/on-prem environments with Azure Arc.
- Centralized logging exists or is feasible via SIEM (e.g., Microsoft Sentinel).
- Identity is federated and privileged access is managed with just-in-time controls.

## High-level capability map
- Governance & policy
- Identity & access
- Monitoring & detection
- Incident response
- Risk & audit readiness
- Hybrid posture management

## Documentation index
- [`01-service-definition.md`](01-service-definition.md)
- [`02-service-catalog.md`](02-service-catalog.md)
- [`03-architecture-principles.md`](03-architecture-principles.md)
- [`04-reference-architecture.md`](04-reference-architecture.md)
- [`05-operating-model.md`](05-operating-model.md)
- [`06-governance-and-raic.md`](06-governance-and-raic.md)
- [`07-metrics-and-kpis.md`](07-metrics-and-kpis.md)
- [`08-roadmap-and-maturity.md`](08-roadmap-and-maturity.md)
- [`09-risk-management.md`](09-risk-management.md)
- [`10-audit-readiness.md`](10-audit-readiness.md)
- [`11-incident-response.md`](11-incident-response.md)
- [`12-change-and-release.md`](12-change-and-release.md)
- [`13-exception-handling.md`](13-exception-handling.md)
- [`14-vulnerability-management.md`](14-vulnerability-management.md)
- [`15-access-management.md`](15-access-management.md)
- [`16-logging-monitoring-siem.md`](16-logging-monitoring-siem.md)
- [`17-data-protection-and-keys.md`](17-data-protection-and-keys.md)
- [`18-hybrid-azure-local.md`](18-hybrid-azure-local.md)
- [`19-devsecops-pipelines.md`](19-devsecops-pipelines.md)
- [`20-runbooks/README.md`](20-runbooks/README.md)
- [`21-templates/README.md`](21-templates/README.md)
- [`22-diagrams/README.md`](22-diagrams/README.md)

## Framework alignment (high level)
- **ISO 27001:2022**: control intent alignment for access control, logging, incident response, change management, and
  risk treatment.
- **CISSP domains**: Security & Risk Management, Asset Security, Security Engineering, IAM, Security Assessment,
  Security Operations, Software Development Security.
- **NIST-like IR lifecycle**: prepare, detect, contain, eradicate, recover, learn.

## Related docs
- Service definition: [`01-service-definition.md`](01-service-definition.md)
- Operating model: [`05-operating-model.md`](05-operating-model.md)
- Audit readiness: [`10-audit-readiness.md`](10-audit-readiness.md)
- Hybrid/Azure Local: [`18-hybrid-azure-local.md`](18-hybrid-azure-local.md)
