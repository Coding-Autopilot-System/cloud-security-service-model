# Decisions

## Phase summaries (`.planning/phases/`)

| Phase | Topic |
|---|---|
| [01-enterprise-audit](../../.planning/phases/01-enterprise-audit/) | Enterprise hardening audit |

## Audits and debug records

- [`.planning/audits/`](../../.planning/audits/)
- [`.planning/debug/`](../../.planning/debug/)

## In-progress decision: DoNotEnforce policy assignment (Phase 33 P4)

The `allowed-locations` policy assignment in
[`impl/azure/landing-zone/bicep/modules/policy-assignments.bicep`](../../impl/azure/landing-zone/bicep/modules/policy-assignments.bicep)
is set to `enforcementMode: 'DoNotEnforce'` (audit-only rollout) on `main` today. The formal ADR
capturing the rationale is being written in open PR #13
(`fix(bicep): pin API versions and record DoNotEnforce ADR`) and had not merged to `main` as of
this writing — `gh pr view 13` reports `state: OPEN`, `mergedAt: null`. Once merged, this page
should be updated to link the landed ADR file directly.

## Architecture Decision Records (`docs/adr/`)

[`docs/adr/`](../adr/README.md) is the formal ADR home for this repo, governed by the rule that
any major technical decision or new dependency must be recorded there (Context / Decision /
Consequences, sequentially numbered: `001-record-architecture-decisions.md`,
`002-use-azure-functions.md`, etc.). No ADR files exist on `main` as of this writing — the
directory holds only the governance README.

<!-- docs-verified: ca23302fb25134bdd086455c91019ffea272a8b1 2026-07-08 -->
