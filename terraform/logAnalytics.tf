
resource "azurerm_log_analytics_workspace" "resilienceforge_law" {
  name                = "resilienceforge-law"
  location            = azurerm_resource_group.resilienceforge_rg.location
  resource_group_name = azurerm_resource_group.resilienceforge_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}