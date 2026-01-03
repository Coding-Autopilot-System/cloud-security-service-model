# Policy as Code

## Overview
Policy initiatives define a baseline for cloud security. Assignments are applied at management group or subscription
scope. This repository includes stub JSON to demonstrate structure.

## Testing approach
- Validate JSON schema with CI formatting checks.
- Test initiatives in a non-production management group.
- Roll out in phases: pilot → extended → enterprise.

## Rollout strategy
1. Author and review in a feature branch.
2. Test compliance in a pilot scope.
3. Expand scope with staged approvals.
4. Monitor drift and remediate exceptions.

## Related
- Initiatives: `initiatives/`
- Assignments: `assignments/`
