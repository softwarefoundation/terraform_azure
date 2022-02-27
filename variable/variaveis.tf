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