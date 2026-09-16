# This file is used to assign the Storage Blob Contributor role for the storage container used to store the state file.
data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "tfstate_blob_contributor" {
    scope = azurerm_storage_container.resilienceforge_storage_container.resource_manager_id
    role_definition_name = "Storage_Blob_Contributor"
    principal_id = data.azurerm_client_config.current.object_id
}
