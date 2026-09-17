output key_vault_id {
    value = azurerm_key_vault.resilienceforge_kv.id
}

output key_vault_uri {
    value = azurerm_key_vault.resilienceforge_kv.valult.uri
}


output key_vault_name {
    value = azurerm_key_vault.resilienceforge_kv.name
}