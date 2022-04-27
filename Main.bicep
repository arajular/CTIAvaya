param appservicelocation string = resourceGroup().location
param appserviceName string 
param sk string 
param webname string

param storageaccountname string
param storagev2 string
param storagesku string
module appservice 'module/app.bicep' = {
  name:'appmodule01'
  params: {
    location: appservicelocation
    appserviceName: appserviceName
    skuName: sk
    WebappName: webname
  }
}

module storageacc01 'module/storage.bicep' = {
  name: 'Storagemodule01'
  params: {
    stname: storageaccountname
    location: appservicelocation
    Storagekind: storagev2
    SkuStoragename: storagesku
  }
}

module sql 'module/sql.bicep' = {
  name: 'sql01'
  params:{
    
  }
  
}
