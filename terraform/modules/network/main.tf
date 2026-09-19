resource "azurerm_virtual_network" "resilienceforge_vnet" {
    name = "resilienceforge-vnet"
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.vnet_address_space

    tags = {
        environment = "dev"
    }
}

resource "azurerm_network_security_group" "resilienceforge_nsg" {
    name = "resilienceforge-nsg"
    location = var.location
    resource_group_name = var.resource_group_name
}


resource "azurerm_subnet" "resilienceforge_subnet" {
    name = "resilienceforge-aks-subnet"
    virtual_network_name = azurerm_virtual_network.resilienceforge_vnet.name
    resource_group_name = var.resource_group_name
    address_prefixes = var.subnet_address_prefixes

}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.resilienceforge_subnet.id
  network_security_group_id = azurerm_network_security_group.resilienceforge_nsg.id
}
