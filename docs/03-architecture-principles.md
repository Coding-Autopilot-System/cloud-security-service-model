# Architecture Principles

## Principles
1. **Security should be boring, predictable, measurable.**
2. **Controls as Code** is the default for enforceable standards.
3. **Least privilege** is enforced with just-in-time access.
4. **Central logging** is required for all critical workloads.
5. **Hybrid parity**: on-prem/hybrid receives equivalent baseline coverage.
6. **Evidence by design**: build audit artifacts into processes.
7. **Segregation of duties** for critical change and approval paths.

## Design implications
- Centralized policy assignments at management group level.
- Logging pipelines are standardized and monitored for gaps.
- Landing zones include baseline networking, identity, and monitoring.
- Exceptions are documented, time-bound, and reviewed.

## Related docs
- Reference architecture: [`04-reference-architecture.md`](04-reference-architecture.md)
- Operating model: [`05-operating-model.md`](05-operating-model.md)
