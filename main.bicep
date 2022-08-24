param storageAcctName string = 'demo2acc'
param storageAcctLocation string = resourceGroup().location

resource storageAcct 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  location: storageAcctLocation
  name: '${storageAcctName}${uniqueString(resourceGroup().id)}'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true 
  }


}
