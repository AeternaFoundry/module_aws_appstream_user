output "appstream_users_id" {
  description = "Map of id values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appstream_users_arn" {
  description = "Map of arn values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appstream_users_authentication_type" {
  description = "Map of authentication_type values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "appstream_users_created_time" {
  description = "Map of created_time values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "appstream_users_enabled" {
  description = "Map of enabled values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.enabled if v.enabled != null }
}
output "appstream_users_first_name" {
  description = "Map of first_name values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.first_name if v.first_name != null && length(v.first_name) > 0 }
}
output "appstream_users_last_name" {
  description = "Map of last_name values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.last_name if v.last_name != null && length(v.last_name) > 0 }
}
output "appstream_users_region" {
  description = "Map of region values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appstream_users_send_email_notification" {
  description = "Map of send_email_notification values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.send_email_notification if v.send_email_notification != null }
}
output "appstream_users_user_name" {
  description = "Map of user_name values across all appstream_users, keyed the same as var.appstream_users"
  value       = { for k, v in aws_appstream_user.appstream_users : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

