resource "azurerm_container_registry" "cr-cp2" {
  name                = "crcp2"
  resource_group_name = azurerm_resource_group.unir-cp2.name
  location            = azurerm_resource_group.unir-cp2.location
  sku                 = "Basic"
  admin_enabled       = true
  tags = local.common_tags
}
