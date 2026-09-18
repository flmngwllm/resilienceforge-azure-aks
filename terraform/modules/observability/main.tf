resource "azurerm_log_analytics_workspace" "resilienceforge_law" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}


resource "azurerm_monitor_action_group" "resilienceforge_action_group" {
  name                = "CriticalAlertsAction"
  resource_group_name = var.resource_group_name
  short_name          = "CritAlerts"
}
