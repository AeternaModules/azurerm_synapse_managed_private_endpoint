output "synapse_managed_private_endpoints" {
  description = "All synapse_managed_private_endpoint resources"
  value       = azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints
}
output "synapse_managed_private_endpoints_fully_qualified_domain_names" {
  description = "List of fully_qualified_domain_names values across all synapse_managed_private_endpoints"
  value       = [for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : v.fully_qualified_domain_names]
}
output "synapse_managed_private_endpoints_name" {
  description = "List of name values across all synapse_managed_private_endpoints"
  value       = [for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : v.name]
}
output "synapse_managed_private_endpoints_subresource_name" {
  description = "List of subresource_name values across all synapse_managed_private_endpoints"
  value       = [for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : v.subresource_name]
}
output "synapse_managed_private_endpoints_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_managed_private_endpoints"
  value       = [for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : v.synapse_workspace_id]
}
output "synapse_managed_private_endpoints_target_resource_id" {
  description = "List of target_resource_id values across all synapse_managed_private_endpoints"
  value       = [for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : v.target_resource_id]
}

