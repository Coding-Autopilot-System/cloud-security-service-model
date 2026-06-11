targetScope = 'resourceGroup'

@description('Azure region for the reference security baseline.')
param location string = 'eastus'

@description('Short environment name used in resource names.')
@minLength(2)
@maxLength(12)
param environmentName string = 'demo'

var suffix = uniqueString(subscription().subscriptionId, resourceGroup().id)

module identity 'modules/identity.bicep' = {
  name: 'identity'
  params: {
    location: location
    name: 'id-csm-${environmentName}-${suffix}'
  }
}

module network 'modules/network-hubspoke.bicep' = {
  name: 'network'
  params: {
    location: location
    name: 'vnet-csm-${environmentName}-${suffix}'
  }
}

module logging 'modules/logging-siem.bicep' = {
  name: 'logging'
  params: {
    location: location
    name: 'log-csm-${environmentName}-${suffix}'
  }
}

module keyvault 'modules/keyvault.bicep' = {
  name: 'keyvault'
  params: {
    location: location
    name: take('kvcsm${environmentName}${suffix}', 24)
  }
}

module policies 'modules/policy-assignments.bicep' = {
  name: 'policies'
  params: {
    location: location
  }
}

output managedIdentityId string = identity.outputs.resourceId
output virtualNetworkId string = network.outputs.resourceId
output logAnalyticsWorkspaceId string = logging.outputs.resourceId
output keyVaultId string = keyvault.outputs.resourceId
output policyAssignmentId string = policies.outputs.resourceId