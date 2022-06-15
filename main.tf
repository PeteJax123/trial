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
      name = "june-06-WS-03"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "2d383b10-41b4-4814-a1b5-2b3d9946dc1b"
  tenant_id = "58a5f423-d654-4713-9407-dd52acaeee23"
  client_id = "c7db6af1-bcee-4ccf-9ae0-6ae3fe4fc6eb"
  client_secret = "ISZ8Q~jwNCoooBJkiSF_7ftjI--WK~Yrns8Xhdtv"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-TFC-Org-THREE"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
