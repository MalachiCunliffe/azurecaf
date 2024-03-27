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
      configuration_aliases = [
        azurerm.connectivity,
        azurerm.management,
      ]
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

# Declare an aliased provider block using your preferred configuration.
# This will be used for the deployment of all "Connectivity resources" to the specified `subscription_id`.

provider "azurerm" {
  features {}
  alias           = "connectivity"
  subscription_id = azurerm_subscription.connectivity.id #"9de08185-b8bb-4d5e-8b60-03940cbcf8f4"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "Management resources" to the specified `subscription_id`.

provider "azurerm" {
  features {}
  alias           = "management"
  subscription_id = azurerm_subscription.management.id #"9fcd3b10-827a-44e1-8298-628ffc9f1c3e"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

