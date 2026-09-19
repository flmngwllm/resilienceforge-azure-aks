resource "azurerm_resource_group" "resilienceforge_rg" {
    name = "resilienceforge-rg"
    location = var.location
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "resilienceforge_contol_plane_access" {
  scope                = module.network.aks_subnet_id
  role_definition_name = "Network Contributor"
  principal_id         = module.identity.control_plane_identity_principal_id
}

module "network" {
    source = "../../modules/network"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
}


module "acr" {
    source = "../../modules/acr"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    registry_name = "resilienceforgeacr232"
}

module "keyvault" {
    source = "../../modules/keyvault"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    key_vault_name = "resilienceforge-kv-232"
    tenant_id = data.azurerm_client_config.current.tenant_id
}


module "observability" {
    source = "../../modules/observability"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    log_analytics_workspace_name = "resilienceforge-law-232"
}

module "aks" {
    source = "../../modules/aks"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    cluster_name = "resilienceforge-aks-232"
    node_count = 1
    vm_size = "Standard_D2_v2"
    subnet_id = module.network.aks_subnet_id
    log_analytics_workspace_id = module.observability.log_analytics_workspace_id
    service_cidr = "10.0.0.0/16"
    pod_cidr = "10.244.0.0/16"
    dns_service_ip = "10.0.0.10"   
    control_plane_identity_id = module.identity.control_plane_identity_id

}


module "identity" {
    source = "../../modules/identity"
    location = var.location
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    workload_identity_name = "resilienceforge-fastapi-workload"
    control_plane_identity_name =  "resilienceforge-control-plane"
}



