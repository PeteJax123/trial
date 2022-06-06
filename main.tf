terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname = "tfe.eastus.cloudapp.azure.com"
    organization = "DanielTest"

    workspaces {
      name = "june-06-WS-01"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "2d383b10-41b4-4814-a1b5-2b3d9946dc1b"
  tenant_id = "58a5f423-d654-4713-9407-dd52acaeee23"
  client_id = "01026030-be41-4e99-9f34-9f939a14bf47"
  client_secret = "u-R8Q~9PYaUOlH4EMvSKVISTfRvG41MoEVAKPajc"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-TFE"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
