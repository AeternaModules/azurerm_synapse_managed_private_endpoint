output "synapse_managed_private_endpoints_fully_qualified_domain_names" {
  description = "Map of fully_qualified_domain_names values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.fully_qualified_domain_names }
}
output "synapse_managed_private_endpoints_name" {
  description = "Map of name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.name }
}
output "synapse_managed_private_endpoints_subresource_name" {
  description = "Map of subresource_name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.subresource_name }
}
output "synapse_managed_private_endpoints_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.synapse_workspace_id }
}
output "synapse_managed_private_endpoints_target_resource_id" {
  description = "Map of target_resource_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.target_resource_id }
}

