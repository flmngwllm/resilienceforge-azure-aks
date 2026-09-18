output "log_analytics_workspace_id" {
    value = azurerm_log_analytics_workspace.resilienceforge_law.id
  
}


output "log_analytics_workspace_name" {
    value = azurerm_log_analytics_workspace.resilienceforge_law.name
}


output "action_group_id" {
    value = azurerm_monitor_action_group.resilienceforge_action_group.id
}