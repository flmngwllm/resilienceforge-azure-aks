variable "location" {
    description = "The Azure region to deploy resources"
    type = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to deploy ACR resources."
    type = string
}

variable "registry_name" {
    description = "The name of the Azure Container Registry."
    type = string
}