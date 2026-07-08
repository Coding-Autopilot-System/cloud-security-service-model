# Operations

This is a docs-only repository — there is no application build, test suite, or coverage gate.
"Operations" here means navigating and validating the documentation set itself.

## Repo structure

- `/docs` — service model documentation and diagrams (numbered `00`–`23`, runbooks, templates,
  Mermaid diagram sources)
- `/impl` — Azure and hybrid implementation stubs (Bicep, policy-as-code, Sentinel examples)
- `/agile` — backlog, ceremonies, and metrics

## CI workflows

| Workflow | Purpose |
|---|---|
| `ci.yml` | Repository CI checks |
| `codeql.yml` | CodeQL static analysis |
| `pr-lint.yml` | PR metadata/title linting |
| `stale.yml` | Stale issue/PR sweep |
| `static.yml` | Publishes the static docs site (`docs/index.html`) |

There is no coverage-percentage badge in this repo — it has no application code to instrument.

## Validating docs locally

Per this repo's `CLAUDE.md` editing rules, run markdownlint before committing doc changes:

```bash
npx markdownlint-cli docs/
```

There is also a repository validation script:

```bash
./scripts/validate-repository.sh
```

## Using the static site

Open [`docs/index.html`](../index.html) to browse a minimal HTML version of the content with
navigation and search, or the built pages under [`docs/pages/`](../pages/).

## Quick navigation

- Executive overview: [`docs/00-executive-overview.md`](../00-executive-overview.md)
- Service definition: [`docs/01-service-definition.md`](../01-service-definition.md)
- Operating model: [`docs/05-operating-model.md`](../05-operating-model.md)
- Metrics & KPIs: [`docs/07-metrics-and-kpis.md`](../07-metrics-and-kpis.md)
- Runbooks: [`docs/20-runbooks/README.md`](../20-runbooks/README.md)
- Threat model: [`docs/23-threat-model.md`](../23-threat-model.md)

<!-- docs-verified: ca23302fb25134bdd086455c91019ffea272a8b1 2026-07-08 -->
