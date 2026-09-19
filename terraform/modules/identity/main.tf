resource "azurerm_user_assigned_identity" "resilienceforge_cpi" {
    location = var.location
    name = var.control_plane_identity_name
    resource_group_name = var.resource_group_name
  
}

resource "azurerm_user_assigned_identity" "resilienceforge_fastapi_workload" {
    location = var.location
    name = var.workload_identity_name
    resource_group_name = var.resource_group_name
  
}
