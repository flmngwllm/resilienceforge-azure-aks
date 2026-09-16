output "backend_rg_name" {
    value = azurerm_resource_group.tfstate.name
  
}

output "backend_storage_account_name" {
    value = azurerm_storage_account.resilienceforge_storage.name
}

output "backend_container_name" {
    value = azurerm_storage_container.resilienceforge_container.name
}

