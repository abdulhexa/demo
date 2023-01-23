resource "azurerm_resource_group" "acr-resource" {
    name = "registry-resource-group"
    location = var.location  
}


resource "azurerm_container_registry" "aks-registry" {
  name                = "azureregistry564654665"
  location            = azurerm_resource_group.acr-resource.location
  resource_group_name = azurerm_resource_group.acr-resource.name
  sku                 = "Standard"
}