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
    hostname = "app.terraform.io"
    organization = "trial-test"

    workspaces {
      name = "june-06-WS-03"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "2d383b10-41b4-4814-a1b5-2b3d9946dc1b"
  tenant_id = "58a5f423-d654-4713-9407-dd52acaeee23"
  client_id = "5bfae3de-96b2-4d5c-8846-53ed45946334"
  client_secret = "APa8Q~~W-XDs7P.Y40kC3kjCNBSRhQApi6hI_aUv"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-TFC-Org-TWO"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
