#!/usr/bin/env bash
set -euo pipefail

RESOURCE_GROUP="${1:-}"
REGION="${2:-}"
SUBSCRIPTION_ID="${3:-}"

if [[ -z "$RESOURCE_GROUP" || -z "$REGION" || -z "$SUBSCRIPTION_ID" ]]; then
  echo "Usage: ./arc-onboard.sh <resource-group> <region> <subscription-id>"
  exit 1
fi

LOG_FILE="arc-onboard.log"
{
  echo "Starting Azure Arc onboarding stub"
  echo "ResourceGroup: $RESOURCE_GROUP"
  echo "Region: $REGION"
  echo "SubscriptionId: $SUBSCRIPTION_ID"
  echo "TODO: add actual Azure Arc onboarding commands"
} | tee -a "$LOG_FILE"
