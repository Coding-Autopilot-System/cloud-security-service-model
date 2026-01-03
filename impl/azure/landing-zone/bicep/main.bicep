// Entry point for landing zone deployment (stub)
param location string = 'eastus'

module identity 'modules/identity.bicep' = {
  name: 'identity'
  params: {
    location: location
  }
}

module network 'modules/network-hubspoke.bicep' = {
  name: 'network'
  params: {
    location: location
  }
}

module logging 'modules/logging-siem.bicep' = {
  name: 'logging'
  params: {
    location: location
  }
}

module keyvault 'modules/keyvault.bicep' = {
  name: 'keyvault'
  params: {
    location: location
  }
}

module policies 'modules/policy-assignments.bicep' = {
  name: 'policies'
  params: {
    location: location
  }
}
