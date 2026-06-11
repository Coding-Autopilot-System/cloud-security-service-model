#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: ./arc-onboard.sh <resource-group> <region> <subscription-id> [--log-file <path>] [--execute]"
}

RESOURCE_GROUP="${1:-}"
REGION="${2:-}"
SUBSCRIPTION_ID="${3:-}"
shift "$(( $# >= 3 ? 3 : $# ))"
LOG_FILE="${TMPDIR:-/tmp}/arc-onboard-dry-run.jsonl"
EXECUTE=false

while (( $# > 0 )); do
  case "$1" in
    --log-file)
      [[ $# -ge 2 ]] || { echo "--log-file requires a path" >&2; exit 2; }
      LOG_FILE="$2"
      shift 2
      ;;
    --execute)
      EXECUTE=true
      shift
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

[[ "$RESOURCE_GROUP" =~ ^[A-Za-z0-9._()/-]{1,90}$ ]] || { echo "Invalid resource group name" >&2; exit 2; }
[[ "$REGION" =~ ^[a-z0-9-]{2,32}$ ]] || { echo "Invalid Azure region" >&2; exit 2; }
[[ "$SUBSCRIPTION_ID" =~ ^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$ ]] || { echo "Invalid subscription ID" >&2; exit 2; }

if [[ "$EXECUTE" == true ]]; then
  echo "Execution is intentionally unavailable in this public reference. Use an approved tenant-specific onboarding package." >&2
  exit 3
fi

mkdir -p "$(dirname "$LOG_FILE")"
printf '{"timestamp":"%s","operation":"azure-arc-onboard","mode":"dry-run","resourceGroup":"%s","region":"%s","subscriptionId":"%s","result":"validated"}\n' \
  "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$RESOURCE_GROUP" "$REGION" "$SUBSCRIPTION_ID" | tee -a "$LOG_FILE"