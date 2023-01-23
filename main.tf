terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.39.0"
    }
  }
}
provider "azurerm" {
  features {}
}


module "cluster" {
  source                = "./modules/cluster"
  location              = var.location
  
  
}

module "registry" {
  source                = "./modules/registry"
  location              = var.location
    
}
