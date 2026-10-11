variable "cloud_access_policies" {
  description = <<EOT
Map of cloud_access_policies, attributes below
Required:
    - name
    - region
    - scopes
    - realm (block):
        - identifier (required)
        - label_policy (optional, block):
            - selector (required)
        - type (required)
Optional:
    - display_name
    - conditions (block):
        - allowed_subnets (required)
EOT

  type = map(object({
    name         = string
    region       = string
    scopes       = set(string)
    display_name = optional(string)
    realm = list(object({
      identifier = string
      label_policy = optional(list(object({
        selector = string
      })))
      type = string
    }))
    conditions = optional(list(object({
      allowed_subnets = set(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_access_policies : (
        length(v.realm) >= 1
      )
    ])
    error_message = "Each realm list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

