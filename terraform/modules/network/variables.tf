variable "location" {
  description = "The Azure region to deploy resources in."
  type        = string

}

variable "resource_group_name" {
    description = "The name of the resource group in which to deploy network resources."
    type        = string
    
}

variable "vnet_address_space" {
    description = "The address space for the virtual network."
    type        = list(string)
    default     = ["10.20.0.0/16"]
}

variable "subnet_address_prefixes" {
    description = "The address prefixes for the AKSsubnet."
    type        = list(string)
    default     = ["10.20.1.0/24"]
}