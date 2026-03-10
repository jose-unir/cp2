output "ip_publica" {
  value       = azurerm_public_ip.public-ip.ip_address
  sensitive   = false
}
output "vm_ssh_key" {
  value       = tls_private_key.ssh-key.private_key_openssh
  sensitive   = true
}
output "acr_url" {
  value       = azurerm_container_registry.cr-cp2.login_server
  sensitive   = false
}
output "acr_user" {
  value       = azurerm_container_registry.cr-cp2.admin_username
  sensitive   = false
}
output "acr_pwd" {
  value       = azurerm_container_registry.cr-cp2.admin_password
  sensitive   = true
}
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
  sensitive = true
}
output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
