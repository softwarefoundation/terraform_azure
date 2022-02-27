provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_storage" {
  location = "brazilsouth"
  name     = "rg_storage_arquivos"
}