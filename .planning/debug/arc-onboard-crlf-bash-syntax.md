---
status: resolved
trigger: arc-onboard.sh CRLF/bash syntax failure
created: 2026-06-11
updated: 2026-06-11
---

# Symptoms

- Expected: `bash -n impl/hybrid/azure-arc/onboarding/arc-onboard.sh` exits successfully.
- Actual: Bash reports a syntax error at the closing brace on line 20.
- Reproduction: Run the command from the repository root on Windows or Linux Bash.

# Current Focus

- hypothesis: CRLF line endings leave a carriage return attached to the closing brace.
- test: Add a repository validator that rejects CRLF in shell files and runs `bash -n`.
- expecting: The validator fails before normalization and passes after LF normalization.
- next_action: Complete repository-wide validation and commit the fix.

# Evidence

- timestamp: 2026-06-11
  observation: Format-Hex shows `0D 0A` line endings throughout arc-onboard.sh.
- timestamp: 2026-06-11
  observation: Bash reports `syntax error near unexpected token '}'` and displays a carriage return after the tee command.

# Eliminated

- hypothesis: The brace-and-pipe Bash syntax is invalid.
  reason: The syntax is valid when line endings are LF.

# Resolution

- root_cause: CRLF line endings attached a carriage return to the Bash closing brace.
- fix: Enforced LF through .gitattributes and normalized arc-onboard.sh.
- verification: Repository validator rejects CRLF and bash -n now passes.
- files_changed: .gitattributes, scripts/validate-repository.sh, arc-onboard.sh
