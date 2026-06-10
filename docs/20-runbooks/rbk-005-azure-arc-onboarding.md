# RBK-005 Azure Arc Onboarding

## Purpose

Onboard hybrid servers to Azure Arc with consistent policy and logging while preserving an approval and evidence trail.

## Preconditions

- Use an approved tenant-specific onboarding package; repository scripts are validation-only dry runs.
- Confirm change approval, owner, subscription, resource group, region, and rollback plan.
- Use managed identity or approved short-lived credentials. Never place secrets in commands or logs.

## Steps

1. Run the repository dry-run script to validate identifiers and produce a JSONL evidence record.
2. Review the dry-run output and obtain the required change approval.
3. Run the approved tenant-specific onboarding package in the approved maintenance window.
4. Validate Azure Arc connectivity, policy scope, and log forwarding.
5. Record outcome, approver, package version, and rollback status in the evidence store.

## Failure handling

- Stop on validation, connectivity, identity, policy, or logging failures.
- Do not retry with broader credentials or disabled controls.
- Roll back through the approved package and escalate according to the incident process.

## Evidence

- Dry-run JSONL record and approved change reference
- Approved package version and execution identity
- Azure Arc connectivity and policy compliance snapshots
- Log ingestion validation and rollback outcome