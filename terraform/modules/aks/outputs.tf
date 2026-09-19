output "node_count" {
    value = azurerm_kubernetes_cluster.resilienceforge_aks.default_node_pool[0].node_count
  
}

output "kubelet_identity_object_id" {
    value = azurerm_kubernetes_cluster.resilienceforge_aks.kubelet_identity[0].object_id
  
}


output "oidc_issuer_url" {
  value = azurerm_kubernetes_cluster.resilienceforge_aks.oidc_issuer_url
}
