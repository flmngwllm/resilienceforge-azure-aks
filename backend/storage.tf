resource "azurerm_storage_account" "resilienceforge_storage_232" {
    name = "resilienceforgestorage"
    location = azurerm_resource_group.tfstate.location
    resource_group_name = azurerm_resource_group.tfstate.name
    account_tier = "Standard"
    account_replication_type = "LRS"
    allow_nested_items_to_be_public = false
    https_traffic_only_enabled = true
    min_tls_version = "TLS1_2"

    blob_properties {
        delete_retention_policy {
            days = 7
        }
        container_delete_retention_policy {
            days = 7
        }
        versioning_enabled = true
    }
  
}


resource "azurerm_storage_container" "resilienceforge_storage_container" {
    name = "resilienceforge-container"
    storage_account_id = azurerm_storage_account.resilienceforge_storage_232.id
    container_access_type = "private"
    

}


