output "node_count" {
    value = azurerm_kubernetes_cluster.resilienceforge_aks.default_node_pool[0].node_count
  
}



