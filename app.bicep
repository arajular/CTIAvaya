
param location string
param appserviceName string
param skuName string
param WebappName string

resource appServicePlan 'Microsoft.Web/serverfarms@2021-03-01' ={
name: appserviceName
location: location
sku:{   
name: skuName
capacity: 0
}
}

resource webapplication 'Microsoft.Web/sites@2021-03-01' = {

  name: WebappName
  location:location
  properties:{
    serverFarmId:appServicePlan.id
  }
}

