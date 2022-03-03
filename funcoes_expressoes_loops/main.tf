provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "grupo-recurso" {
  location = "brazilsouth"
  name     = "rg-terraform-modulo-5"
  tags = {
    data = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
}