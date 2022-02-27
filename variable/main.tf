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

resource "azurerm_resource_group" "rg_databases" {
  location = var.localizacao
  name     = var.rg_nome
  tags     = merge(var.tags, {
    treinamento = "terraform"
  })
}

resource "azurerm_virtual_network" "vnet" {
  address_space       = var.vnet_ips
  location            = var.localizacao
  name                = "vnet_terraform-treinamento"
  resource_group_name = "${azurerm_resource_group.rg_databases.name}"
}

