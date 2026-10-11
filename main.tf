data "azurerm_advisor_recommendations" "advisor_recommendations_lookup" {
  for_each = var.advisor_recommendations_lookup

  filter_by_category                  = each.value.filter_by_category
  filter_by_recommendation_type_guids = each.value.filter_by_recommendation_type_guids
  filter_by_resource_groups           = each.value.filter_by_resource_groups
  filter_by_resource_ids              = each.value.filter_by_resource_ids
}

