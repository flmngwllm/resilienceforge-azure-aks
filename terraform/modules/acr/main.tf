resource "azurerm_container_registry" "resilienceforge_acr" {
    name = var.registry_name
    resource_group_name = var.resource_group_name
    location = var.location
    sku = "Basic"
    admin_enabled = false
    public_network_access_enabled = true

  
}

