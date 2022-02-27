terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_localizacao" {
  location = var.localizacao
  name     = "rg_localizacao"
  tags     = var.tags
}