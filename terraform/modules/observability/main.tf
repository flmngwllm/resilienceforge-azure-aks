resource "azurerm_container_registry" "resilienceforge_acr" {
    name = "resilienceforgeacr"
    resource_group_name = azurerm_resource_group.resilienceforge_rg.name
    location = azurerm_resource_group.resilienceforge_rg.location    
    sku = "Basic"
  
}