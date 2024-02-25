# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
  cloud {
    organization = "kiwis"

    workspaces {
      name = "azurecaf"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.74.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = "6832d73c-44d0-4185-8125-4724dbdac761"
}