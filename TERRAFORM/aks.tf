resource "azurerm_kubernetes_cluster" "aks" {
  name                = "cp2-aks"
  location            = azurerm_resource_group.unir-cp2.location
  resource_group_name = azurerm_resource_group.unir-cp2.name
  dns_prefix          = "cp2"
  sku_tier   = "Standard"
  tags = local.common_tags
  role_based_access_control_enabled = true

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v4"
  }

  identity {
    type = "SystemAssigned"
  }
}
