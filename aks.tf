resource "azurerm_resource_group" "aks-resource" {
    name = "kubernetes-resource-group-automation"
    location = var.location  
}


resource "azurerm_kubernetes_cluster" "aks-cluster" {
    name                = "terraform-cluster"
    location            = azurerm_resource_group.aks-resource.location
    resource_group_name = azurerm_resource_group.aks-resource.name
    dns_prefix          = "terraform-cluster"
    

    default_node_pool {
      name = "default"
      node_count = 2
      vm_size = "Standard_A2_v2"
      
    }

    
  identity {
    type = "SystemAssigned"
  }



}
