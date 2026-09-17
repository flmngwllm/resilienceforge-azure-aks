variable "tenant_id" {
  description = "The Azure Active Directory tenant ID."
  type        = string 
  
}

variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources in."
  type        = string
}


variable "resource_group_name" {
  description = "The name of the resource group in which to deploy Key Vault resources."
  type        = string
}


