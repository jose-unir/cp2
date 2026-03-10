resource "azurerm_role_assignment" "acr_pull_for_aks" {
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.cr-cp2.id
}
