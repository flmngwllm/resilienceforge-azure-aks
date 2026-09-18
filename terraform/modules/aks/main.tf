resource "azurerm_kubernetes_cluster" "resilienceforge_aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "UserAssigned"
    identity_ids = [var.control_plane_identity_id]
  }

  tags = {
    Environment = "Dev"
  }

  network_profile {
    network_plugin = "azure"
    network_plugin_mode = "overlay"
    network_data_plane = "cilium"
    network_policy = "cilium"
    load_balancer_sku = "standard"
    outbound_type = "loadBalancer"
    pod_cidr = var.pod_cidr
    service_cidr = var.service_cidr
    dns_service_ip = var.dns_service_ip
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_workspace_id
    msi_auth_for_monitoring_enabled = true
  }
}