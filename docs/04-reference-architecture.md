# Reference Architecture

## Overview
The reference architecture centers on standardized landing zones, centralized policy enforcement, and shared
logging/monitoring services. It supports Azure and hybrid assets via Azure Arc.

## Key components
- **Management groups** with policy initiatives and guardrails.
- **Landing zones** with hub/spoke networking and shared services.
- **Centralized logging** via Log Analytics and SIEM.
- **Identity security** with PIM, break-glass accounts, and MFA.
- **Hybrid onboarding** via Azure Arc to maintain policy and logging scope.

## Data flow summary
1. Policies are authored and tested in a controlled pipeline.
2. Assignments are deployed to management groups and subscriptions.
3. Logs are forwarded to SIEM for detection and response.
4. Evidence is stored and mapped to controls.

## Diagram
Shared responsibility overview: [`22-diagrams/shared-responsibility.mmd`](22-diagrams/shared-responsibility.mmd)

## Related docs
- Architecture principles: [`03-architecture-principles.md`](03-architecture-principles.md)
- Hybrid/Azure Local: [`18-hybrid-azure-local.md`](18-hybrid-azure-local.md)
