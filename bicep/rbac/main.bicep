param scope string
param roleDefinitionName string
param principalId string

var roleDefinitionId = last(split(subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionName), '/'))

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(scope, roleDefinitionId, principalId)
  scope: resourceGroup(scope)
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionId)
    principalId: principalId
  }
}
