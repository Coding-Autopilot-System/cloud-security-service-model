# Azure Arc Policy Scope

## Scope guidance
- Apply baseline initiatives at the management group level.
- Ensure Arc-enabled servers inherit the same policy set.
- Tag Arc resources with owner, environment, and business unit.

## Logging requirements
- Diagnostic settings must forward security logs to SIEM.
- Validate ingestion with a test query and alert.
