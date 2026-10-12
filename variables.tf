variable "webhook_subscriptions" {
  description = <<EOT
Map of webhook_subscriptions, attributes below
Required:
    - events
    - delivery_method (block):
        - custom_header (optional, block):
            - name (required)
            - value (required)
        - temporarily_disabled (optional)
        - type (optional)
        - url (optional)
    - filter (block):
        - id (optional)
        - type (required)
Optional:
    - active
    - description
    - type
EOT

  type = map(object({
    events      = list(string)
    active      = optional(bool)
    description = optional(string)
    type        = optional(string)
    delivery_method = list(object({
      custom_header = optional(list(object({
        name  = string
        value = string
      })))
      temporarily_disabled = optional(bool)
      type                 = optional(string)
      url                  = optional(string)
    }))
    filter = list(object({
      id   = optional(string)
      type = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.webhook_subscriptions : (
        length(v.delivery_method) >= 1
      )
    ])
    error_message = "Each delivery_method list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.webhook_subscriptions : (
        length(v.filter) >= 1
      )
    ])
    error_message = "Each filter list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

