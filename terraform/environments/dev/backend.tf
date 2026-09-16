terraform { 
    backend "azurerm" {
        use_azuread_auth = true
        storage_account_name = "resilienceforgestorage23"
        container_name = "resilienceforge-container"
        key = "dev/resilienceforge.tfstate"
    
    }
}