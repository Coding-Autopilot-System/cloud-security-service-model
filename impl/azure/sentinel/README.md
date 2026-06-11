# Microsoft Sentinel Detection References

## Assurance boundary

The analytic rules are disabled reference examples. Validate schemas and KQL against a test workspace, establish a
baseline, review exclusions, and obtain approval before enabling them. They are not production detection guarantees.

## Detection engineering workflow

1. Define the threat, data dependency, owner, and expected response.
2. Validate query syntax and representative positive and negative cases in a test workspace.
3. Measure false-positive rate, coverage, query cost, and execution duration.
4. Peer review KQL, thresholds, entity mappings, exclusions, and response guidance.
5. Deploy disabled, observe results, then enable through an approved change.
6. Review alert quality monthly and after source-schema or threat changes.

## Required evidence

- Query version and commit SHA
- Test dataset or replay window and expected results
- False-positive analysis and approved exclusions
- Query duration and estimated ingestion/query cost
- Owner approval, deployment record, and rollback outcome

## Contents

- Analytic rule references in `analytic-rules/`
- Playbook stubs in `playbooks/`