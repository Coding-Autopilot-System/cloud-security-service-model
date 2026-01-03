# Hybrid and Azure Local

## Azure Arc onboarding
- Standard onboarding scripts are used for Windows and Linux.
- Assets are tagged for ownership and environment.
- Policy scope ensures the same baseline for cloud and hybrid.

## Policy scope
- Management group policies apply to Arc-enabled servers.
- Exceptions must be time-bound and approved.

## Logging pipeline
- Forward logs from Arc-enabled servers to SIEM.
- Validate data flow with a test query and alert.

## Connectivity patterns
- Hub/spoke with centralized firewall controls.
- Private link where available; otherwise, restricted outbound.
- Dedicated management subnets for hybrid connectivity.

## Azure Local baseline checklist
- **Identity:** federated identity and MFA for admin access.
- **Patching:** defined patch cadence and verification.
- **EDR:** endpoint detection and response installed.
- **Logging:** forwarding enabled with retention.
- **Secrets:** stored in a managed vault with rotation.

## Practical hybrid boundaries
- Cloud Security Service owns baseline policy and logging.
- Local IT owns physical infrastructure and local admin operations.
- Shared responsibility for incident response and evidence.

## Related docs
- Logging & SIEM: [`16-logging-monitoring-siem.md`](16-logging-monitoring-siem.md)
- Policy-as-code: [`../impl/azure/policy-as-code/README.md`](../impl/azure/policy-as-code/README.md)
