output "control_plane_identity_id" {
  value = azurerm_user_assigned_identity.resilienceforge_cpi.id
}

output "control_plane_identity_principal_id" {
  value = azurerm_user_assigned_identity.resilienceforge_cpi.principal_id
}

output "control_plane_identity_client_id" {
  value = azurerm_user_assigned_identity.resilienceforge_cpi.client_id
}


output "workload_identity_id" {
  value = azurerm_user_assigned_identity.resilienceforge_fastapi_workload.id
}

output "workload_identity_principal_id" {
  value = azurerm_user_assigned_identity.resilienceforge_fastapi_workload.principal_id
}

output "workload_identity_client_id" {
  value = azurerm_user_assigned_identity.resilienceforge_fastapi_workload.client_id
}