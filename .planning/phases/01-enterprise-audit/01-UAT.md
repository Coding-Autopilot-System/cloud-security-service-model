# Enterprise Security Model Audit

**Date:** 2026-06-11
**Source:** `gsd-audit-fix --severity all --max 8`
**Scope:** Threat model, controls, Azure and hybrid design, Bicep, CI, evidence, and documentation

## Classification

| ID | Severity | Finding | Classification | Reason |
| --- | --- | --- | --- | --- |
| F-01 | High | CI uses mutable action tags and lacks explicit least-privilege defaults, timeouts, and concurrency controls. | Auto-fixable | Specific workflow files and objectively testable controls. |
| F-02 | High | CI validates formatting only; Bicep, onboarding scripts, Mermaid files, security examples, and repository contracts are not enforced. | Auto-fixable | A repository validator and CI invocation provide a bounded fix. |
| F-03 | High | Landing-zone Bicep modules return strings but deploy no resources or secure defaults. | Auto-fixable | Existing module boundaries support a compilable reference implementation. |
| F-04 | High | Policy-as-code examples reference fictional policy IDs and do not define rollout safety metadata. | Auto-fixable | Existing JSON examples can use documented built-in policy IDs and safe enforcement defaults. |
| F-05 | Medium | Azure Arc onboarding examples accept unvalidated input, write ambiguous logs, and lack an explicit dry-run contract. | Auto-fixable | Two bounded scripts have clear safety behavior and syntax validation. |
| F-06 | High | The service model has no formal threat model connecting assets, trust boundaries, threats, controls, and residual risk. | Auto-fixable | A public-safe architecture threat model can be added and cross-linked. |
| F-07 | High | Audit evidence guidance does not define ownership, integrity, access, collection automation, or evidence failure handling. | Auto-fixable | The evidence contract can be made explicit in the existing audit document. |
| F-08 | Medium | Sentinel analytic examples contain TODO queries, so detection claims are not testable or operationally credible. | Auto-fixable | Existing examples can contain safe, bounded KQL and tuning metadata. |

## Manual-only Findings

| ID | Severity | Finding | Reason |
| --- | --- | --- | --- |
| M-01 | High | Select the production identity, tenant hierarchy, and least-privilege deployment identities. | Requires organization-specific identity and management-group decisions. |
| M-02 | High | Validate controls against a live Azure and Azure Local estate. | Requires tenant access, representative workloads, and approved test windows. |
| M-03 | High | Obtain independent compliance and legal review before claiming certification or regulatory sufficiency. | Requires qualified external assurance and organization-specific obligations. |
| M-04 | Medium | Choose the production SIEM automation approval model and incident containment authority. | Requires risk appetite and operating-model decisions. |

## Stop Conditions

- Stop after the first failed validation and record unattempted findings.
- Do not deploy resources or mutate a live Azure tenant.
- Do not claim certification, compliance, or production readiness from reference artifacts alone.
