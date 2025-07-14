param location string
param vnetName string
param addressSpace array

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${vnetName}'
  location: location
}

resource vnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: vnetName
  location: resourceGroup.location
  resourceGroup: resourceGroup.name
  properties: {
    addressSpace: {
      addressPrefixes: addressSpace
    }
  }
}
