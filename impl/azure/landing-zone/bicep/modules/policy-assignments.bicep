param location string

resource allowedLocations 'Microsoft.Authorization/policyAssignments@2024-04-01' = {
  name: guid(resourceGroup().id, 'allowed-locations')
  properties: {
    displayName: 'Allowed locations for the reference resource group'
    description: 'Restricts new resources to the approved reference deployment region.'
    policyDefinitionId: tenantResourceId('Microsoft.Authorization/policyDefinitions', 'e56962a6-4747-49cd-b67b-bf8b01975c4c')
    enforcementMode: 'DoNotEnforce'
    metadata: {
      category: 'Security'
      rolloutState: 'audit'
    }
    parameters: {
      listOfAllowedLocations: {
        value: [
          location
        ]
      }
    }
  }
}

output resourceId string = allowedLocations.id