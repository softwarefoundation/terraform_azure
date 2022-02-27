variable "localizacao" {
  type = string
  default = "brazilsouth"
  description = "Localização de recursos do Azure. Ex brazilsouth"
}

variable "tags" {
  type = map
  description = "Tags nos serviços e recursos do Azure"
  default = {
    ambiente = "dev"
    autor = "Yan"
  }
}

variable "rg_nome" {
  type = string
  description = "Nome do Resource Group"
  default = "rg_main_databases"
}

variable "vnet_ips" {
  type = list
  default = ["10.0.0.0/16","192.168.0.0/16"]
}