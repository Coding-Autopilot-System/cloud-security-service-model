# ADR 001: Policy Assignment Enforcement Mode (DoNotEnforce)

## Status

Accepted

## Context

The `impl/azure/landing-zone/bicep/modules/policy-assignments.bicep` module assigns the
built-in "Allowed locations" policy definition
(`e56962a6-4747-49cd-b67b-bf8b01975c4c`) with `enforcementMode: 'DoNotEnforce'` and
`metadata.rolloutState: 'audit'`. Phase 33 (Azure Infra Hardening) reviewed this setting
to confirm it is an intentional design choice rather than an unreviewed gap.

The `impl/azure/landing-zone/` directory is explicitly documented (see its own README) as
an "Azure Landing Zone (Stub)" — a reference implementation demonstrating the pattern of
identity, network, logging, Key Vault, and policy modules working together, not a
deployed environment bound to any real subscription, management group, or workload.

## Decision

Keep `enforcementMode: 'DoNotEnforce'` (audit-only) for the `allowedLocations` policy
assignment in this stub landing zone. Do not flip to `Default` (enforcing) mode as part
of Phase 33.

This is a deliberate, reviewed exception, not an oversight: enforcing mode on a reference
module (a) misrepresents a teaching/example artifact as hardened production guidance, and
(b) an enforcement-mode change is a live-policy behavior change that this phase's
constraints (no `az deployment`, validation via `bicep build`/`bicep lint` only) cannot
safely verify end-to-end before merge.

## Consequences

- Any team copying this stub landing zone into a real subscription MUST explicitly
  revisit `enforcementMode` and set it to `Default` (or remove `DoNotEnforce` entirely)
  before treating the copied module as a production control. This ADR is the durable
  record of that follow-up obligation.
- No immediate change to deployed infrastructure results from this ADR, because this
  module has never been deployed as production infrastructure (stub/reference only).
- If this landing zone stub is ever promoted to an actively deployed reference
  environment (e.g. a real demo subscription), enforcement mode must be reassessed at
  that time and this ADR superseded by a new one recording that transition.

## Related

- `impl/azure/landing-zone/bicep/modules/policy-assignments.bicep`
- `impl/azure/landing-zone/README.md`
- Phase 33 context: `.planning/phases/33-azure-infra-hardening/33-CONTEXT.md` (in the
  `PersonalRepo` root workspace, not this repository)
