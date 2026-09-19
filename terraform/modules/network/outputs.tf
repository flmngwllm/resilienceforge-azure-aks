output "vnet_id" {
    value = azurerm_virtual_network.resilienceforge_vnet.id
}

output "aks_subnet_id" {
    value = azurerm_subnet.resilienceforge_subnet.id
}

