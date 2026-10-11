output "cloud_access_policies_id" {
  description = "Map of id values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no id are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_access_policies_conditions" {
  description = "Map of conditions values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no conditions are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "cloud_access_policies_created_at" {
  description = "Map of created_at values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no created_at are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "cloud_access_policies_display_name" {
  description = "Map of display_name values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no display_name are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_access_policies_name" {
  description = "Map of name values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no name are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_access_policies_policy_id" {
  description = "Map of policy_id values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no policy_id are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "cloud_access_policies_realm" {
  description = "Map of realm values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no realm are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.realm if v.realm != null && length(v.realm) > 0 }
}
output "cloud_access_policies_region" {
  description = "Map of region values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no region are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_access_policies_scopes" {
  description = "Map of scopes values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no scopes are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "cloud_access_policies_updated_at" {
  description = "Map of updated_at values across all cloud_access_policies, keyed the same as var.cloud_access_policies except keys with no updated_at are omitted"
  value       = { for k, v in grafana_cloud_access_policy.cloud_access_policies : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

