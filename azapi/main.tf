terraform {
  required_providers {
    azapi = {
      source  = "bcc-code/azapi"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azapi" {
}
provider "azurerm" {
  features {}
}

data "azuread_client_config" "current" {}

resource "azapi_resource" "example107" {
  type      = "Microsoft.Resources/resourceGroups@2021-04-01"
  name      = "registry107"
  parent_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  location = "West Europe"
  tags = {
    "key" = "value2"
  }
}
