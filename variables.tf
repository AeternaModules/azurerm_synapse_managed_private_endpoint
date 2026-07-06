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
        v.fully_qualified_domain_names == null || (length(v.fully_qualified_domain_names) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_managed_private_endpoint's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: subresource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !ok
  # path: subresource_name
  #   condition: length(value) < 3
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  # path: subresource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !m
  # path: subresource_name
  #   condition: length(value) == 0
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
}

