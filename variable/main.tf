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

variable "localizacao" {
  type = string
  default = "brazilsouth"
  description = "Localização de recursos do Azure. Ex brazilsouth"
}

resource "azurerm_resource_group" "rg_localizacao" {
  location = var.localizacao
  name     = "rg_localizacao"
}