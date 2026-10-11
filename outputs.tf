output "advisor_recommendations_lookup_id" {
  description = "Map of id values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "advisor_recommendations_lookup_filter_by_category" {
  description = "Map of filter_by_category values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.filter_by_category if v.filter_by_category != null && length(v.filter_by_category) > 0 }
}
output "advisor_recommendations_lookup_filter_by_recommendation_type_guids" {
  description = "Map of filter_by_recommendation_type_guids values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.filter_by_recommendation_type_guids if v.filter_by_recommendation_type_guids != null && length(v.filter_by_recommendation_type_guids) > 0 }
}
output "advisor_recommendations_lookup_filter_by_resource_groups" {
  description = "Map of filter_by_resource_groups values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.filter_by_resource_groups if v.filter_by_resource_groups != null && length(v.filter_by_resource_groups) > 0 }
}
output "advisor_recommendations_lookup_filter_by_resource_ids" {
  description = "Map of filter_by_resource_ids values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.filter_by_resource_ids if v.filter_by_resource_ids != null && length(v.filter_by_resource_ids) > 0 }
}
output "advisor_recommendations_lookup_recommendations" {
  description = "Map of recommendations values across all advisor_recommendations_lookup, keyed the same as var.advisor_recommendations_lookup"
  value       = { for k, v in data.azurerm_advisor_recommendations.advisor_recommendations_lookup : k => v.recommendations if v.recommendations != null && length(v.recommendations) > 0 }
}

