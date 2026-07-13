variable "synapse_managed_private_endpoints" {
  description = <<EOT
Map of synapse_managed_private_endpoints, attributes below
Required:
    - name
    - subresource_name
    - synapse_workspace_id
    - target_resource_id
Optional:
    - fully_qualified_domain_names
EOT

  type = map(object({
    name                         = string
    subresource_name             = string
    synapse_workspace_id         = string
    target_resource_id           = string
    fully_qualified_domain_names = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_managed_private_endpoints : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_managed_private_endpoints : (
        length(v.subresource_name) == 0
      )
    ])
    error_message = "[from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_managed_private_endpoints : (
        v.fully_qualified_domain_names == null || (alltrue([for x in v.fully_qualified_domain_names : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

