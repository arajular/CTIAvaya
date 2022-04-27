param location string = 'centralus'
targetScope = 'subscription'
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' ={
  name:'CTI_Dev_Resource'
  location: location
}



