resource "azurerm_resource_group" "unir-cp2" {
  name     = "unir-cp2-rg"
  location = "France Central"
  tags = local.common_tags
}
