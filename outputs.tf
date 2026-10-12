output "webhook_subscriptions_id" {
  description = "Map of id values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no id are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "webhook_subscriptions_active" {
  description = "Map of active values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no active are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.active if v.active != null }
}
output "webhook_subscriptions_delivery_method" {
  description = "Map of delivery_method values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no delivery_method are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.delivery_method if v.delivery_method != null && length(v.delivery_method) > 0 }
  sensitive   = true
}
output "webhook_subscriptions_description" {
  description = "Map of description values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no description are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "webhook_subscriptions_events" {
  description = "Map of events values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no events are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.events if v.events != null && length(v.events) > 0 }
}
output "webhook_subscriptions_filter" {
  description = "Map of filter values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no filter are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "webhook_subscriptions_type" {
  description = "Map of type values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions except keys with no type are omitted"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.type if v.type != null && length(v.type) > 0 }
}

