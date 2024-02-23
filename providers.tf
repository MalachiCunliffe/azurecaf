# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
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

  client_id       = "d8e498c9-1cec-4e12-9d0d-a654b2883c3a"
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = "6832d73c-44d0-4185-8125-4724dbdac761"
}