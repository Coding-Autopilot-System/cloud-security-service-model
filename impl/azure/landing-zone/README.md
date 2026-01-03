# Azure Landing Zone (Stub)

## Management group structure
- Root management group
  - Platform
  - Landing Zones
  - Sandbox (optional)

## Subscription topology
- Connectivity subscription (hub)
- Identity subscription
- Management subscription (logging/monitoring)
- Workload subscriptions (spokes)

## Identity/RBAC baseline
- Privileged roles use PIM
- Break-glass accounts monitored
- Role assignments scoped to least privilege

## Network hub/spoke
- Hub VNet with firewall and shared services
- Spoke VNets per workload
- Private DNS and private endpoints where feasible

## Logging + SIEM
- Log Analytics workspace in management subscription
- Diagnostic settings enforced via policy
- Sentinel (or equivalent SIEM) for detections

## Policy assignments
- Baseline policy initiative at management group level
- Workload-specific initiatives at subscription level

## Related
- Bicep stubs in `bicep/`
- Terraform skeleton in `terraform/`
