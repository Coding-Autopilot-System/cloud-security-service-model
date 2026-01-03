Param(
  [Parameter(Mandatory=$true)][string]$ResourceGroup,
  [Parameter(Mandatory=$true)][string]$Region,
  [Parameter(Mandatory=$true)][string]$SubscriptionId
)

$logFile = "arc-onboard.log"
"Starting Azure Arc onboarding stub" | Tee-Object -FilePath $logFile -Append
"ResourceGroup: $ResourceGroup" | Tee-Object -FilePath $logFile -Append
"Region: $Region" | Tee-Object -FilePath $logFile -Append
"SubscriptionId: $SubscriptionId" | Tee-Object -FilePath $logFile -Append

Write-Output "TODO: add actual Azure Arc onboarding commands"
