@description('Location for the Cosmos DB account.')
param location string = resourceGroup().location

module cosmos 'cosmos.bicep' = {
  name: 'cosmos'
  params: {
     accountName: 'cosmos-kafka-${uniqueString(resourceGroup().id)}'
     containerName: 'users'
     databaseName: 'connect'
     location: location
  }
} 
