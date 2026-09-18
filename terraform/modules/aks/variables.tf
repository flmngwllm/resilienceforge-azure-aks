variable "cluster_name" {
    description = "Name of the AKS cluster."
    type = string
}

variable "location" {
    description = "The Azure region to deploy resources"
    type = string
}

variable "resource_group_name" {
    description = "The name of the resource group to deploy AKS resources."
    type = string
}

variable "node_count" {
    description = "The number of nodes in the node pool."
    type = number
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type = string 
}

variable "subnet_id" {
    description = "AKS subnet resource ID"
    type = string 
}

variable "log_analytics_workspace_id" {
    description = "Log Analytics Workspace resource ID"
    type = string 
}

variable "control_plane_identity_id" {
    description = "User-assigned control-plane identity resource ID"
    type = string 
}

variable "pod_cidr" {
    description = "Address range assigned to AKS pods"
    type = string 
}


variable "service_cidr" {
    description = "Address range assigned to Kubernetes services"
    type = string 
}


variable "dns_service_ip" {
    description = "IP address used by Kubernetes DNS"
    type = string 
}