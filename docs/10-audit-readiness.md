# Audit Readiness

## Evidence model
| Control area | Evidence | Source | Retention |
| --- | --- | --- | --- |
| Access control | PIM activation logs, role review reports | IAM/PIM | 1 year |
| Logging | SIEM ingestion reports, log retention policy | SIEM, Log Analytics | 1 year |
| Incident response | Incident records, postmortems | ITSM/SecOps | 2 years |
| Change management | Change tickets, approvals | ITSM | 2 years |
| Policy compliance | Compliance reports, policy assignments | Policy dashboard | 1 year |

## ISO 27001:2022 mapping (high level)
| ISO domain | Control intent | Implementation examples |
| --- | --- | --- |
| Access control | Ensure least privilege and privileged access management | PIM, break-glass monitoring |
| Asset management | Maintain inventory and classification | Resource tagging, inventory reports |
| Logging & monitoring | Detect events and maintain evidence | Centralized logging, SIEM analytics |
| Incident management | Timely response and recovery | IR playbooks, evidence capture |
| Change management | Controlled changes to security posture | Change request workflow, CAB-lite |
| Risk management | Identify and treat security risks | Risk register, exception handling |

## Audit readiness checklist
- Evidence sources documented for each control intent.
- Retention periods meet regulatory obligations.
- Evidence is reviewable and immutable.
- Exception register is current and signed off.

## Related docs
- Risk management: [`09-risk-management.md`](09-risk-management.md)
- Incident response: [`11-incident-response.md`](11-incident-response.md)
