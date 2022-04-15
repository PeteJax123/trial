# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "=2.60.0"
#     }
#   }
# }

provider "azurerm" {
  subscription_id = "var.TF_VAR_ARM_SUBSCRIPTION_ID"
  tenant_id = "var.TF_VAR_ARM_TENANT_ID"
  client_id = "var.TF_VAR_ARM_CLIENT_ID"
  client_secret = "var.TF_VAR_ARM_CLIENT_SECRET"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "chetan"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
