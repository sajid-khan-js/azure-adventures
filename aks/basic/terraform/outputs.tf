output "resource_group" {
  value = azurerm_resource_group.k8s
}

output "azurerm_log_analytics_workspace" {
  value = azurerm_log_analytics_workspace.test
}

output "azurerm_log_analytics_solution" {
  value = azurerm_log_analytics_solution.test
}

output "cluster" {
  value = azurerm_kubernetes_cluster.k8s
}
