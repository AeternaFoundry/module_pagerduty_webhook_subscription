resource "pagerduty_webhook_subscription" "webhook_subscriptions" {
  for_each = var.webhook_subscriptions

  events      = each.value.events
  active      = each.value.active
  description = each.value.description
  type        = each.value.type

  dynamic "delivery_method" {
    for_each = each.value.delivery_method
    content {
      dynamic "custom_header" {
        for_each = delivery_method.value.custom_header != null ? delivery_method.value.custom_header : []
        content {
          name  = custom_header.value.name
          value = custom_header.value.value
        }
      }
      temporarily_disabled = delivery_method.value.temporarily_disabled
      type                 = delivery_method.value.type
      url                  = delivery_method.value.url
    }
  }

  dynamic "filter" {
    for_each = each.value.filter
    content {
      id   = filter.value.id
      type = filter.value.type
    }
  }
}

