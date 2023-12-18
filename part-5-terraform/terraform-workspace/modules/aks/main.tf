provider "azurerm" {
  features {}
}

data "azurerm_kubernetes_service_versions" "current" {
  location        = var.location
  include_preview = false
}

resource "azurerm_kubernetes_cluster" "aks" {
  resource_group_name = var.resource_group_name
  name                = var.aks_cluster_name
  location            = var.location
  kubernetes_version  = data.azurerm_kubernetes_service_versions.current.latest_version

  default_node_pool {
    name                = "defaultpool"
    vm_size             = "Standard_DS2_v2"
    node_count          = var.node_count
    zones               = [1, 2, 3]
    enable_auto_scaling = true
    max_count           = 3
    min_count           = 1
    os_disk_size_gb     = 30
    type                = "VirtualMachineScaleSets"
  }

  dns_prefix = var.dns_prefix

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "production"
  }

}

