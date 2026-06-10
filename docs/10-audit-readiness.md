# Audit Readiness

## Assurance boundary

This repository defines an evidence operating contract and reference controls. It does not prove certification,
regulatory compliance, or the effectiveness of a production tenant. Evidence must be validated against the applicable
scope, obligations, and approved assurance process.

## Evidence contract

Every evidence item must contain:

- Control and requirement identifiers, scope, environment, and evidence owner
- Source system, collection method, collection identity, and collection timestamp
- Correlation values such as change ID, run ID, commit SHA, deployment ID, or incident ID
- Retention class, access classification, integrity method, and review status
- Collection result, validation result, exceptions, and remediation or escalation reference

Evidence owners are accountable for collection health, access reviews, validation, retention, and timely remediation.
Control owners are accountable for deciding whether the evidence demonstrates the intended control outcome.

## Evidence model

| Control area | Evidence | Source | Owner | Collection | Retention |
| --- | --- | --- | --- | --- | --- |
| Access control | PIM activations and access reviews | Entra ID / PIM | Identity owner | Daily export and quarterly review | 1 year |
| Logging | Ingestion health, retention, and analytic results | SIEM / Log Analytics | SecOps owner | Continuous health plus monthly sample | 1 year |
| Incident response | Incident record, timeline, and postmortem | ITSM / SecOps | Incident manager | Event-driven export at closure | 2 years |
| Change management | Change, approval, commit, and deployment correlation | ITSM / GitHub / Azure | Platform owner | Per deployment | 2 years |
| Policy compliance | Assignment, exemption, and compliance snapshots | Azure Policy | Policy owner | Daily snapshot and monthly review | 1 year |

## Integrity and storage requirements

- Store evidence in a dedicated protected location separate from the producing workload.
- Use least-privilege managed identities for automated collection and read-only roles for reviewers.
- Enable immutable or write-once retention where obligations require it; document approved deletion and legal hold.
- Preserve source timestamps and correlation identifiers. Generate and verify hashes for exported evidence packages.
- Log evidence reads, writes, exports, retention changes, and access-policy changes.
- Encrypt evidence in transit and at rest; prohibit secrets, access tokens, and unnecessary personal data.

## Automated collection and validation

1. Collect through scheduled or event-driven jobs using managed identity and bounded scopes.
2. Validate schema, source, expected time window, completeness, hash, and correlation identifiers.
3. Record collection and validation outcomes in a separate health log.
4. Alert the evidence owner and control owner on missing, late, malformed, or integrity-failed evidence.
5. Sample evidence monthly and test restoration and access at least quarterly.

## Evidence failure handling

Evidence failure is a control-operating issue, not an administrative warning.

- Stop assurance claims and release gates that depend on missing or integrity-failed evidence.
- Open an incident or control exception with severity based on the affected control and duration.
- Preserve the failed artifact and collection logs; do not overwrite or silently regenerate them.
- Restore collection through the approved runbook, document the gap, and assess whether retrospective evidence exists.
- Require control-owner approval before closing the failure and resuming assurance reporting.

## ISO 27001:2022 mapping (high level)

| ISO domain | Control intent | Implementation examples |
| --- | --- | --- |
| Access control | Ensure least privilege and privileged access management | PIM, break-glass monitoring |
| Asset management | Maintain inventory and classification | Resource tagging, inventory reports |
| Logging and monitoring | Detect events and maintain evidence | Centralized logging, SIEM analytics |
| Incident management | Timely response and recovery | IR playbooks, evidence capture |
| Change management | Controlled changes to security posture | Change request workflow, approvals |
| Risk management | Identify and treat security risks | Risk register, exception handling |

## Audit readiness checklist

- Evidence contracts and owners are approved for each control intent.
- Collection identities and reviewer access are least privilege and reviewed.
- Retention, immutability, integrity verification, and legal hold meet applicable obligations.
- Collection health, restoration, and failure escalation are tested.
- Exceptions and residual risks are current, time-bound, and approved.

## Related docs

- Risk management: [`09-risk-management.md`](09-risk-management.md)
- Incident response: [`11-incident-response.md`](11-incident-response.md)
- Threat model: [`23-threat-model.md`](23-threat-model.md)