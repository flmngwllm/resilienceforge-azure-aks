resource "azurerm_key_vault" "resilienceforge_kv" {
    name = var.key_vault_name
    location = var.location
    resource_group_name = var.resource_group_name
    tenant_id = var.tenant_id
    soft_delete_retention_days = 7
    purge_protection_enabled = false
    public_network_access_enabled = true
    rbac_authorization_enabled = true

    sku_name = "standard"

  
}