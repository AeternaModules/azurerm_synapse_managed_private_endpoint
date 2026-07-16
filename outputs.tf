output "synapse_managed_private_endpoints_id" {
  description = "Map of id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_managed_private_endpoints_fully_qualified_domain_names" {
  description = "Map of fully_qualified_domain_names values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.fully_qualified_domain_names if v.fully_qualified_domain_names != null && length(v.fully_qualified_domain_names) > 0 }
}
output "synapse_managed_private_endpoints_name" {
  description = "Map of name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_managed_private_endpoints_subresource_name" {
  description = "Map of subresource_name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.subresource_name if v.subresource_name != null && length(v.subresource_name) > 0 }
}
output "synapse_managed_private_endpoints_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}
output "synapse_managed_private_endpoints_target_resource_id" {
  description = "Map of target_resource_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = { for k, v in azurerm_synapse_managed_private_endpoint.synapse_managed_private_endpoints : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}

