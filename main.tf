# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  cloud {
    organization = "what"

    workspaces {
      name = "bcc-platform-test"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "module" {
  source  = "app.terraform.io/app/what/registry/modules/private/what/module/Test/1.1.2"
  version = "1.1.2"
  resource_group_name = "a-terraform-resource-group"
  resource_name = "trg"
}

# resource "azurerm_resource_group" "rg2" {
#   name     = "a-terraform-resource-group"
#   location = "North Europe"
# }