terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "c614835e-9b30-4377-8676-159532c4a446"
  tenant_id = "7a4d8448-3ab0-4c53-85f5-4f98b0e89d44"
  client_id = "94871431-da9b-46b9-af7b-f6294cdeffa2"
  client_secret = "SyM7Q~P2vEVy~nXNxu6-qSKb5ZVHZClXtTQcR"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "chetan"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
