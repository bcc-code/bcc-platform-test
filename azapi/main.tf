terraform {
  required_version = ">= 1.3.6"
  required_providers {
    azapi = {
      source  = "bcc-code/azapi"
    }
    azuread = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azapi" {
}
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azapi_resource" "example107" {
  type      = "Microsoft.Resources/resourceGroups@2021-04-01"
  name      = "registry107"
  parent_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  location = "West Europe"
  tags = {
    "key" = "value2"
  }
}
