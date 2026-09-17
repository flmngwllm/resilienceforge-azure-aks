resource "azurerm_resource_group" "resilienceforge_rg" {
    name = "resilienceforge-rg"
    location = var.location
}

data "azurerm_client_config" "current" {}

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
