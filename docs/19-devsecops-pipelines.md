# DevSecOps Pipelines

## Security integration
- **SAST:** scan application code for vulnerabilities.
- **Dependency scan:** check third-party libraries for CVEs.
- **IaC scan:** validate Terraform/Bicep templates for misconfigurations.
- **Secret scan:** prevent accidental credential exposure.
- **Gated deployments:** block releases on critical findings.

## Definition of done (security)
- No critical vulnerabilities open.
- Policy compliance checks passed.
- Secrets scan shows no leaked credentials.
- Logging and monitoring enabled.

## Example pipeline snippets

```yaml
# Example: security checks stage
steps:
  - name: sast
    run: ./tools/run-sast.sh
  - name: dependency-scan
    run: ./tools/dependency-scan.sh
  - name: iac-scan
    run: ./tools/iac-scan.sh
  - name: secret-scan
    run: ./tools/secret-scan.sh
```

```yaml
# Example: gated deployment
steps:
  - name: deploy
    run: ./tools/deploy.sh
  - name: validate-policy
    run: ./tools/policy-validate.sh
```

## Diagram
Policy-as-code lifecycle: [`22-diagrams/policy-as-code-loop.mmd`](22-diagrams/policy-as-code-loop.mmd)

## Related docs
- Operating model: [`05-operating-model.md`](05-operating-model.md)
- Templates: [`21-templates/template-sprint-ceremonies.md`](21-templates/template-sprint-ceremonies.md)
