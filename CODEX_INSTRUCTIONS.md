# CODEX INSTRUCTIONS — Cloud Security Service Model Repo (Enterprise-grade)

You are Codex acting as a Staff+ Platform Service Owner (Cloud Security) and Technical Writer with security domain expertise.
Your task: create a brand-new public GitHub repo that simulates an enterprise Cloud Security service operating model.
Do NOT mention any real company names. Use generic terms like “the organization”, “global enterprise”, “platform team”.
Write as if the reader is:
- Head of Cloud Platform Services
- Security leadership (CISO org)
- Cloud engineering leads
- Audit/compliance stakeholders
Tone: crisp, enterprise, practical. Avoid buzzword soup. Prefer clear boundaries, RACI, measurable outcomes.

## 0) Hard constraints
- Everything must fit in ONE repo with a coherent structure.
- Produce both Markdown documentation and a lightweight static HTML docs site.
- Include Mermaid diagrams for key process flows and lifecycle models.
- Include Azure AND “Azure Local / on-prem / hybrid” perspectives (Azure Arc, connectivity, policy scope, logging).
- Include security frameworks mapping:
  - ISO/IEC 27001:2022 (controls mapping at high level; don’t copy copyrighted text; summarize)
  - CISSP domain coverage (high level)
  - NIST-like IR lifecycle framing (high level)
- Include Agile operating model (service-as-product, backlog, maturity roadmap, KPIs).
- Include “policy-as-code” examples (Azure Policy initiatives/assignments as JSON stubs), plus IaC stubs (Bicep/Terraform skeleton).
- Include runbooks, SLAs/SLOs, incident response playbooks, change management, exception handling, risk acceptance.
- Include a CI workflow that checks markdown, mermaid syntax, and link validity (best-effort).
- Everything must be public-safe: no secrets, no internal URLs, no real tenant IDs.

## 1) Output format requirements
- Use Markdown for documentation (`docs/`).
- Use Mermaid (`.mmd` or embedded in MD) for flows.
- Use YAML for templates/workflows.
- Use JSON for Azure Policy stubs.
- Use HTML/CSS for `/site` static docs with a simple nav and search (JS optional).
- Provide consistent naming, cross-links, and an index.

## 2) Repo name + branding
Repo title: `cloud-security-service-model`
Tagline: “A pragmatic, enterprise Cloud Security service operating model (Azure + Hybrid)”

## 3) Repository structure (MUST create exactly this, plus any needed helpers)
/
  README.md
  LICENSE
  CODE_OF_CONDUCT.md
  CONTRIBUTING.md
  SECURITY.md
  CODEX_INSTRUCTIONS.md   (this file)
  .editorconfig
  .gitignore

  docs/
    00-executive-overview.md
    01-service-definition.md
    02-service-catalog.md
    03-architecture-principles.md
    04-reference-architecture.md
    05-operating-model.md
    06-governance-and-raic.md
    07-metrics-and-kpis.md
    08-roadmap-and-maturity.md
    09-risk-management.md
    10-audit-readiness.md
    11-incident-response.md
    12-change-and-release.md
    13-exception-handling.md
    14-vulnerability-management.md
    15-access-management.md
    16-logging-monitoring-siem.md
    17-data-protection-and-keys.md
    18-hybrid-azure-local.md
    19-devsecops-pipelines.md
    20-runbooks/
      README.md
      rbk-001-incident-triage.md
      rbk-002-critical-vuln-response.md
      rbk-003-policy-drift-remediation.md
      rbk-004-breakglass-access.md
      rbk-005-azure-arc-onboarding.md
      rbk-006-sentinel-detection-tuning.md
    21-templates/
      README.md
      template-risk-register.csv
      template-exception-request.md
      template-risk-acceptance.md
      template-incident-report.md
      template-postmortem.md
      template-change-request.md
      template-service-review.md
      template-weekly-security-ops.md
      template-sprint-ceremonies.md
      template-kpi-dashboard.md
    22-diagrams/
      README.md
      service-lifecycle.mmd
      incident-response.mmd
      change-management.mmd
      exception-handling.mmd
      policy-as-code-loop.mmd
      hybrid-logging-architecture.mmd
      shared-responsibility.mmd
      security-operating-model.mmd

  impl/
    azure/
      landing-zone/
        README.md
        bicep/
          main.bicep
          modules/
            identity.bicep
            network-hubspoke.bicep
            logging-siem.bicep
            keyvault.bicep
            policy-assignments.bicep
        terraform/
          README.md
          main.tf
          modules/
            identity/
            network/
            logging/
            policies/
      policy-as-code/
        README.md
        initiatives/
          iso27001-aligned-initiative.json
          cloud-security-baseline-initiative.json
        assignments/
          mgmt-group-assignment.example.json
          subscription-assignment.example.json
      sentinel/
        README.md
        analytic-rules/
          suspicious-admin-activity.example.json
          impossible-travel.example.json
        playbooks/
          isolate-vm.example.json
          disable-user.example.json
    hybrid/
      azure-arc/
        README.md
        onboarding/
          arc-onboard.ps1
          arc-onboard.sh
        policy-scope/
          arc-policy-scope.md
      azure-local/
        README.md
        secure-baseline/
          baseline-checklist.md
          logging-forwarding.md

  agile/
    README.md
    backlog/
      README.md
      epics.md
      sample-backlog-items.md
      definition-of-done.md
      security-debt.md
    ceremonies/
      sprint-planning.md
      daily-standup.md
      review-demo.md
      retrospective.md
    operating-metrics/
      okrs.md
      kpi-cadence.md

  site/
    README.md
    index.html
    assets/
      style.css
      app.js
    pages/
      overview.html
      service-definition.html
      operating-model.html
      architecture.html
      kpis.html
      roadmap.html
      runbooks.html
      templates.html
      hybrid.html

  .github/
    workflows/
      ci.yml
    ISSUE_TEMPLATE/
      bug_report.yml
      doc_change.yml
      service_request.yml
    pull_request_template.md

## 4) Content requirements for key docs (write them fully)

### README.md (executive-level)
- 1-page: what this repo is, who it’s for, what problem it solves
- State “Cloud Security as a service/product”, not a toolset.
- Include: scope, non-scope, service boundaries, how to consume, quick navigation, how to use the site
- Include diagram preview (Mermaid) of service lifecycle
- Include “How this maps to ISO 27001 / CISSP at a high level” section (summary)

### docs/01-service-definition.md
- Service mission, outcomes, customers/consumers
- Service boundaries (what we do / don’t do)
- Interfaces with:
  - Cloud Platform Engineering
  - SOC / SecOps
  - Enterprise Risk & Compliance
  - App teams
  - ITSM
- A clear RACI table (Responsible/Accountable/Consulted/Informed)
- Intake model: service requests, exceptions, changes, incidents

### docs/05-operating-model.md
- The operating model end-to-end:
  - Plan (roadmap/backlog)
  - Build (controls as code)
  - Run (monitoring, incident response)
  - Improve (metrics, retros)
- “Security should be boring, predictable, measurable” framing
- Define key ceremonies and cadences:
  - Weekly ops review
  - Monthly service review with platform leadership
  - Quarterly risk review
  - Annual audit readiness cycle
- Include escalation paths and “no hero culture” behavior

### docs/07-metrics-and-kpis.md
- Define KPIs with:
  - definition, formula, data sources, target, owner, reporting cadence
- Must include:
  - policy compliance %
  - MTTR for critical findings
  - time-to-detect/time-to-contain (IR)
  - privileged access exposure (PIM activations, standing admins)
  - misconfiguration trend rate
  - backup restore test success rate
- Include a sample dashboard mock (markdown table) and a “metrics anti-patterns” section

### docs/08-roadmap-and-maturity.md
- Maturity phases: Foundation → Standardization → Automation → Optimization
- For each phase: outcomes, key initiatives, exit criteria, risks
- Show a 12-month sample roadmap (quarterly)

### docs/11-incident-response.md
- IR lifecycle, severity model (SEV1-4)
- Roles: incident commander, comms lead, resolver, forensics, approver
- Playbooks, evidence capture, postmortems
- Include Mermaid flow: alert → triage → contain → eradicate → recover → learn

### docs/12-change-and-release.md
- Change model: standard/normal/emergency
- Pre-approval rules, maintenance windows, risk assessment
- CAB-lite approach for cloud (fast but controlled)
- Include Mermaid flow and sample change request template link

### docs/13-exception-handling.md
- Exception types (policy exception, risk acceptance, compensating controls)
- Required fields, expiry, review cadence, sign-off matrix
- Include Mermaid: request → assess → approve → implement compensating control → review/expire

### docs/18-hybrid-azure-local.md
- Azure Arc onboarding, policy scope, logging pipeline
- Connectivity patterns (hub/spoke, firewall, private link where possible)
- “Azure Local” baseline checklist: identity, patching, EDR, logging forwarding, secrets
- Practical hybrid boundaries: what cloud security service owns vs local IT

### docs/19-devsecops-pipelines.md
- Integrate security into CI/CD:
  - SAST, dependency scan, IaC scan, secret scan
  - gated deployments
- Define “definition of done” security controls
- Include example pipeline YAML snippets (generic)

### docs/09-risk-management.md + docs/10-audit-readiness.md
- Risk register process, scoring method, review cadence
- Audit evidence model: “control → evidence → source → retention”
- ISO 27001 mapping table (high-level: domain → control intent → implementation examples)

## 5) Mermaid diagrams (must generate all in docs/22-diagrams/*.mmd)
Make them clean, labeled, and consistent.

Required diagrams:
- service-lifecycle.mmd (service as product lifecycle)
- security-operating-model.mmd (Plan/Build/Run/Improve)
- incident-response.mmd
- change-management.mmd
- exception-handling.mmd
- policy-as-code-loop.mmd (author → test → deploy → monitor drift → fix)
- hybrid-logging-architecture.mmd (Azure + Arc + on-prem logs → SIEM)
- shared-responsibility.mmd (provider vs customer layers)

## 6) Implementation stubs (impl/*)
These are NOT production code; they are credible examples.

### impl/azure/landing-zone
- Provide a README explaining:
  - management group structure
  - subscription topology
  - identity/RBAC baseline
  - hub/spoke network
  - logging + sentinel
  - policy assignments
- Provide minimal Bicep stubs with comments and parameters:
  - identity.bicep (roles, PIM notes)
  - network-hubspoke.bicep (hub vnet, firewall placeholder, private dns)
  - logging-siem.bicep (log analytics workspace, diagnostic settings placeholders)
  - keyvault.bicep (kv + RBAC)
  - policy-assignments.bicep (assignment placeholders)
- Provide Terraform skeleton mirroring the above (empty modules with README per module)

### impl/azure/policy-as-code
- Write JSON stubs for:
  - iso27001-aligned-initiative.json (high-level grouping; do not reproduce ISO text)
  - cloud-security-baseline-initiative.json (encryption, no public IP, diagnostics, tags)
- Provide assignment examples (mgmt group + subscription)
- Provide README describing testing approach and rollout strategy

### impl/azure/sentinel
- Provide example analytic rule JSON stubs and playbook JSON stubs
- Provide README describing detection engineering workflow & tuning cadence

### impl/hybrid/azure-arc
- Provide onboarding scripts (PowerShell + bash) that are SAFE placeholders:
  - include parameter parsing, logging, and “TODO: add actual commands”
  - do not include secrets
- Provide documentation of policy scope and logging forwarding patterns

### impl/hybrid/azure-local
- Provide baseline-checklist.md and logging-forwarding.md with stepwise, generic guidance

## 7) Agile artifacts (agile/*)
- Provide a realistic security backlog model:
  - epics (Identity, Policy as Code, Sentinel, Hybrid, Data, IR, Governance)
  - sample backlog items with acceptance criteria
  - definition-of-done.md that includes security checks
  - security-debt.md describing how to track “security debt”
- Provide ceremony templates and cadence
- Provide OKR examples aligned to measurable outcomes

## 8) Templates (docs/21-templates)
Create real usable templates:
- CSV risk register (columns: id, title, description, likelihood, impact, score, owner, treatment, due date, status, last reviewed, evidence links)
- exception request md
- risk acceptance md
- incident report md
- postmortem md
- change request md
- service review md
- weekly security ops agenda md
- sprint ceremonies md
- kpi dashboard md

## 9) HTML site (site/*)
Create a minimal docs site:
- left nav
- mobile friendly
- search (simple JS search over page titles or a small index array)
- Each page should summarize and link to the canonical markdown doc in /docs.
- Keep design clean and “internal documentation” style.
- No external dependencies required (no frameworks). Pure HTML/CSS/JS.

## 10) GitHub hygiene + CI
### .github/workflows/ci.yml
Include:
- markdown lint (use a simple open-source action)
- link check (best-effort)
- verify Mermaid code blocks exist (basic grep)
- validate JSON formatting for policy stubs
Keep it stable and not overcomplicated.

### templates
- Issue templates: bug, doc change, service request
- PR template with checklist: docs updated, diagrams updated, evidence links updated, security impact assessed

## 11) Cross-linking and navigation
- docs/00-executive-overview.md links to everything
- docs index in README
- Each doc includes “Related docs” at bottom
- Diagrams referenced from relevant docs

## 12) Quality bar
- No fluff. Every section must answer: “what is it, who owns it, how does it work, how is success measured, how does it improve”.
- Use consistent terminology:
  - “Service Manager” (role)
  - “Cloud Security Service” (product)
  - “Consumers” (app teams/platform teams)
  - “Controls as Code” (policies, detections, baselines)
  - “Evidence” (audit artifacts)
- Prefer explicit tables (RACI, KPIs, cadences, responsibilities).
- Include “anti-patterns” sections to show maturity (e.g., security as blocker, PDF policies, hero culture).

## 13) Execution steps (what you should do now)
1) Create all files and folders above.
2) Populate each file with full high-quality content.
3) Ensure internal links work.
4) Ensure Mermaid diagrams render (syntax correct).
5) Ensure CI YAML is valid.
6) Ensure repo reads like an enterprise internal wiki export.

## 14) Deliverable completeness checklist (MUST satisfy)
- [ ] README is executive-grade and sets service-owner posture
- [ ] Service definition includes boundaries + RACI + interfaces
- [ ] Operating model includes cadence + escalation + predictable ops
- [ ] KPIs are defined with formulas and targets
- [ ] Roadmap/maturity is credible and phased
- [ ] IR, Change, Exception, Risk, Audit docs exist and are actionable
- [ ] Azure + Hybrid implementation stubs exist and are coherent
- [ ] Mermaid diagrams exist for all key flows
- [ ] Templates exist and are usable
- [ ] HTML site exists and links to docs
- [ ] GitHub CI + templates exist

Proceed to generate the repo contents now.
If something is ambiguous, make a reasonable enterprise assumption and document it in `docs/00-executive-overview.md` under “Assumptions”.
