param subscriptionName string
param billingScopeId string
param scope string
param roleDefinitionName string
param principalId string
param location string
param vnetName string
param addressSpace array
param peeringName string
param remoteVnetId string

module subscription 'subscription/main.bicep' = {
  name: 'subscriptionDeployment'
  params: {
    subscriptionName: subscriptionName
    billingScopeId: billingScopeId
  }
}

module rbac 'rbac/main.bicep' = {
  name: 'rbacDeployment'
  params: {
    scope: scope
    roleDefinitionName: roleDefinitionName
    principalId: principalId
  }
}

module vnet 'vnet/main.bicep' = {
  name: 'vnetDeployment'
  params: {
    location: location
    vnetName: vnetName
    addressSpace: addressSpace
  }
}

module peering 'peering/main.bicep' = {
  name: 'peeringDeployment'
  params: {
    vnetName: vnetName
    remoteVnetId: remoteVnetId
    peeringName: peeringName
  }
}
