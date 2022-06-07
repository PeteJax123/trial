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
  
  subscription_id = "2d383b10-41b4-4814-a1b5-2b3d9946dc1b"
  tenant_id = "58a5f423-d654-4713-9407-dd52acaeee23"
  client_id = "e1cef5ac-cedc-4598-96ef-1dd6f752b3fa"
  client_secret = "vES8Q~92h6gFHmhuy74YDnFHPKnbQlcSFvCSvbLT"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-Seven-One"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
