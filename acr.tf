resource "azurerm_container_registry" "acr-registry" {
  name                = "acrworkflow1674449177361"
  sku                 = "Premium"
  resource_group_name = "kubernetes-resource-group-automation"
  location            = "East US"
}
