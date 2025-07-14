param subscriptionName string
param billingScopeId string

resource subscription 'Microsoft.Subscription/aliases@2020-09-01' = {
  name: subscriptionName
  properties: {
    workload: 'Production'
    displayName: subscriptionName
    billingScope: billingScopeId
  }
}
