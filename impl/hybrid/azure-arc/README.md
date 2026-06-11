# Azure Arc (Hybrid)

## Overview

Azure Arc onboarding enables consistent policy and logging for hybrid servers. The scripts in `onboarding/` are
safe validation-only references. They never mutate Azure or a server, and they reject `--execute` / `-Execute`.
Production onboarding must use an approved tenant-specific package with managed identity or short-lived credentials.

## Dry-run contract

Both scripts validate the resource group, region, and subscription ID, then append one JSONL evidence record to a
configurable log path. Use a temporary or protected evidence location and retain it according to the audit policy.

```bash
./onboarding/arc-onboard.sh rg-security northeurope 00000000-0000-0000-0000-000000000000
```

```powershell
./onboarding/arc-onboard.ps1 -ResourceGroup rg-security -Region northeurope -SubscriptionId 00000000-0000-0000-0000-000000000000
```

## Contents

- Onboarding validation scripts: `onboarding/`
- Policy scope guidance: `policy-scope/arc-policy-scope.md`