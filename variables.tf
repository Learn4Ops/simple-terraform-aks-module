variable "location" {
  default = "westeurope"
}

variable "environment" {
  default = "dev"

}

variable "aks-rg-name" {
  default = "aks-rg"
}

variable "aks-name" {
  default = "aks"
}

variable "aks-identity" {
  default = "SystemAssigned"
}

variable "aks-default-node-pool-name" {
  default = "aksdefault"
}

variable "aks-default-node-pool-count" {
  type    = number
  default = 1
}

variable "aks-default-node-pool-size" {
  type    = string
  default = "Standard_D2_v2"
}

variable "node_pools" {
  type = map(object({
    name       = string
    vm_size    = string
    node_count = number
  }))
}