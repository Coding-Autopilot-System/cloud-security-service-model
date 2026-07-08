# cloud-security-service-model Wiki

`cloud-security-service-model` is a public-safe, enterprise-grade operating model for a Cloud
Security Service delivered as a service/product for Azure and hybrid environments. It is a
**docs-only repo** — Markdown, Mermaid diagrams, and Bicep/policy-as-code implementation stubs;
no application code, no test suite.

## Who it's for

Head of Cloud Platform Services, security leadership (CISO org), cloud engineering leads,
audit/compliance stakeholders.

## How to consume

1. Start with the [executive overview](../00-executive-overview.md) and
   [service definition](../01-service-definition.md).
2. Use the [operating model](../05-operating-model.md) and
   [metrics & KPIs](../07-metrics-and-kpis.md) to set expectations.
3. Apply the [templates](../21-templates/README.md) and
   [runbooks](../20-runbooks/README.md) in operational workflows.
4. Extend the [implementation stubs](../../impl/) in your own environment.

## Where to go next

- [Architecture](Architecture.md) — service model architecture and the NO-AZURE deploy /
  bicep-ready posture of the implementation stubs
- [Operations](Operations.md) — verified navigation and validation commands
- [Decisions](Decisions.md) — index of recorded architectural decisions, including the
  in-progress DoNotEnforce policy ADR

<!-- docs-verified: ca23302fb25134bdd086455c91019ffea272a8b1 2026-07-08 -->
