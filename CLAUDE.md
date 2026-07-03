# cloud-security-service-model

Enterprise cloud security operating model documentation — a comprehensive, audit-ready security framework for Azure hybrid environments. This is a **docs-only repo** (Markdown, Mermaid diagrams, HTML). No application code.

## What's Here

| Directory | Content |
|---|---|
| `docs/01–19` | Core service model docs: definition, catalog, architecture principles, governance, metrics, operating model, incident response, vulnerability management, access management, data protection, DevSecOps |
| `docs/20-runbooks/` | Operational runbooks (incident triage, vuln response, policy drift, break-glass access, Sentinel tuning) |
| `docs/21-templates/` | Reusable templates (change request, exception, incident report, postmortem, KPI dashboard) |
| `docs/22-diagrams/` | Mermaid source files for all architecture and process diagrams |
| `agile/` | Sprint ceremonies, backlog, OKRs, KPI cadence |
| `impl/azure/sentinel/` | Sentinel playbook examples |

## Conventions

- All diagrams are Mermaid (`.mmd` files in `docs/22-diagrams/`) — they render natively in GitHub
- Template files use `template-` prefix in `docs/21-templates/`
- Runbook files use `rbk-NNN-` prefix
- No code, no builds, no test suites — pure documentation
- `.editorconfig` enforces consistent whitespace

## Editing Rules

- Keep docs enterprise-grade in tone — no toy/demo language
- Update diagrams alongside prose when process flows change
- Run markdownlint (`npx markdownlint-cli docs/`) before committing
- All PRs should use `.github/pull_request_template.md`

## GSD Workflow

Use `/gsd:quick` for doc edits. For large restructures, use `/gsd:plan-phase`.
