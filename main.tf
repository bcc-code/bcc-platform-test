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

resource "azurerm_resource_group" "rg" {
  name     = "terraform-resource-group"
  location = "North Europe"
}