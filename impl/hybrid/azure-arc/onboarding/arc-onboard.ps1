[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[A-Za-z0-9._()/-]{1,90}$')]
  [string]$ResourceGroup,

  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[a-z0-9-]{2,32}$')]
  [string]$Region,

  [Parameter(Mandatory = $true)]
  [ValidatePattern('^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')]
  [string]$SubscriptionId,

  [string]$LogFile = (Join-Path ([System.IO.Path]::GetTempPath()) 'arc-onboard-dry-run.jsonl'),

  [switch]$Execute
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($Execute) {
  throw 'Execution is intentionally unavailable in this public reference. Use an approved tenant-specific onboarding package.'
}

$parent = Split-Path -Parent $LogFile
if ($parent) {
  New-Item -ItemType Directory -Path $parent -Force | Out-Null
}

$record = [ordered]@{
  timestamp = [DateTimeOffset]::UtcNow.ToString('o')
  operation = 'azure-arc-onboard'
  mode = 'dry-run'
  resourceGroup = $ResourceGroup
  region = $Region
  subscriptionId = $SubscriptionId
  result = 'validated'
}

$line = $record | ConvertTo-Json -Compress
$line | Tee-Object -FilePath $LogFile -Append