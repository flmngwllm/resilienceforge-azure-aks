resource "azurerm_resource_group" "resilienceforge_rg" {
    name = "resilienceforge-rg"
    location = var.location
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
