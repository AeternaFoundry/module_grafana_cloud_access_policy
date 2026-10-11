resource "grafana_cloud_access_policy" "cloud_access_policies" {
  for_each = var.cloud_access_policies

  name         = each.value.name
  region       = each.value.region
  scopes       = each.value.scopes
  display_name = each.value.display_name

  dynamic "realm" {
    for_each = each.value.realm
    content {
      identifier = realm.value.identifier
      dynamic "label_policy" {
        for_each = realm.value.label_policy != null ? realm.value.label_policy : []
        content {
          selector = label_policy.value.selector
        }
      }
      type = realm.value.type
    }
  }

  dynamic "conditions" {
    for_each = each.value.conditions != null ? each.value.conditions : []
    content {
      allowed_subnets = conditions.value.allowed_subnets
    }
  }
}

