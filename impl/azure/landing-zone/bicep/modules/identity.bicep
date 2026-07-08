param location string
param name string

resource identity 'Microsoft.ManagedIdentity/userAssignedIdentities@2024-11-30' = {
  name: name
  location: location
  tags: {
    purpose: 'cloud-security-service-model'
    privilegeModel: 'no-default-role-assignments'
  }
}

output resourceId string = identity.id
output principalId string = identity.properties.principalId