output "webhook_subscriptions_id" {
  description = "Map of id values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.id }
}
output "webhook_subscriptions_active" {
  description = "Map of active values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.active }
}
output "webhook_subscriptions_delivery_method" {
  description = "Map of delivery_method values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.delivery_method }
  sensitive   = true
}
output "webhook_subscriptions_description" {
  description = "Map of description values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.description }
}
output "webhook_subscriptions_events" {
  description = "Map of events values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.events }
}
output "webhook_subscriptions_filter" {
  description = "Map of filter values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.filter }
}
output "webhook_subscriptions_type" {
  description = "Map of type values across all webhook_subscriptions, keyed the same as var.webhook_subscriptions"
  value       = { for k, v in pagerduty_webhook_subscription.webhook_subscriptions : k => v.type }
}

