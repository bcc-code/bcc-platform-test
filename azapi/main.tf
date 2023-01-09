terraform {
  required_version = ">= 1.3.6"
  required_providers {
    azapi = {
      source  = "bcc-code/azapi"
      version = "1.2.1"
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

data "azurerm_client_config" "current" {}

resource "azapi_resource" "example108" {
  type      = "Microsoft.Resources/resourceGroups@2021-04-01"
  name      = "test108"
  parent_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  location = "West Europe"
  tags = {
    "key" = "value2"
  }
}
