variable "advisor_recommendations_lookup" {
  description = <<EOT
Map of advisor_recommendations_lookup, attributes below
Optional:
    - filter_by_category
    - filter_by_recommendation_type_guids
    - filter_by_resource_groups
    - filter_by_resource_ids
EOT

  type = map(object({
    filter_by_category                  = optional(set(string))
    filter_by_recommendation_type_guids = optional(set(string))
    filter_by_resource_groups           = optional(set(string))
    filter_by_resource_ids              = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.advisor_recommendations_lookup : (
        v.filter_by_resource_groups == null || (alltrue([for x in v.filter_by_resource_groups : length(x) <= 90]))
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.advisor_recommendations_lookup : (
        v.filter_by_resource_groups == null || (alltrue([for x in v.filter_by_resource_groups : !endswith(x, ".")]))
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.advisor_recommendations_lookup : (
        v.filter_by_resource_groups == null || (alltrue([for x in v.filter_by_resource_groups : length(x) != 0]))
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

