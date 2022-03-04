provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "grupo-recurso" {
  location = "brazilsouth"
  name     = "rg-terraform-modulo-5"
  tags = {
    data = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp()),
    ambiente = lower("Homologacao")
    autor = upper("Yan")
    tecnologia = title("terraform treianmento")
  }
}

variable "vnet_ips" {
  type = list
  default = ["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "vnet" {
  address_space       = concat(var.vnet_ips, ["192.168.0.0/16"])
  location            = "brazilsouth"
  name                = "vnet_treinamento_azure"
  resource_group_name = "${azurerm_resource_group.grupo-recurso.name}"
}

output "vnet_lista_ips" {
  value = length("${azurerm_virtual_network.vnet.address_space}")
}