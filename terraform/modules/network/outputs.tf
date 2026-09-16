output "vnet_id" {
    value = azurem_virtual_network.resilienceforge_vnet.id
}

output "subnet_id" {
    value = azurerm_subnet.resilienceforge_subnet.id
}

