#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

failures=0

report_failure() {
  printf 'ERROR: %s\n' "$1" >&2
  failures=$((failures + 1))
}

while IFS= read -r -d '' script; do
  if LC_ALL=C grep -q $'\r' "$script"; then
    report_failure "$script contains CRLF line endings; shell scripts must use LF."
  fi

  if ! bash -n "$script"; then
    report_failure "$script failed bash syntax validation."
  fi
done < <(find impl scripts -type f -name '*.sh' -print0)

while IFS= read -r -d '' json_file; do
  if command -v jq >/dev/null 2>&1; then
    json_validator=(jq empty)
  elif command -v python >/dev/null 2>&1; then
    json_validator=(python -m json.tool)
  elif command -v python.exe >/dev/null 2>&1; then
    json_validator=(python.exe -m json.tool)
  else
    report_failure "jq or Python is required for JSON validation."
    break
  fi

  if ! "${json_validator[@]}" "$json_file" >/dev/null; then
    report_failure "$json_file failed JSON parsing."
  fi
done < <(find impl -type f -name '*.json' -print0)

if command -v az >/dev/null 2>&1; then
  if ! az bicep build --file impl/azure/landing-zone/bicep/main.bicep --stdout >/dev/null; then
    report_failure "Landing-zone Bicep failed compilation."
  fi
else
  report_failure "Azure CLI with Bicep is required for repository validation."
fi

if grep -R -n --include='*.json' -- '-stub"' impl/azure/policy-as-code; then
  report_failure "Policy examples must not reference fictional stub identifiers."
fi

while IFS= read -r -d '' assignment; do
  if ! grep -q '"enforcementMode": "DoNotEnforce"' "$assignment"; then
    report_failure "$assignment must default to audit-only DoNotEnforce rollout."
  fi
done < <(find impl/azure/policy-as-code/assignments -type f -name '*.json' -print0)
if (( failures > 0 )); then
  printf 'Repository validation failed with %d error(s).\n' "$failures" >&2
  exit 1
fi

printf 'Repository validation passed.\n'
