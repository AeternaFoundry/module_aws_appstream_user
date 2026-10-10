variable "appstream_users" {
  description = <<EOT
Map of appstream_users, attributes below
Required:
    - authentication_type
    - user_name
Optional:
    - enabled
    - first_name
    - last_name
    - region
    - send_email_notification
EOT

  type = map(object({
    authentication_type     = string
    user_name               = string
    enabled                 = optional(bool)
    first_name              = optional(string)
    last_name               = optional(string)
    region                  = optional(string)
    send_email_notification = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.appstream_users : (
        v.first_name == null || (length(v.first_name) >= 0 && length(v.first_name) <= 2048)
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_users : (
        v.last_name == null || (length(v.last_name) >= 0 && length(v.last_name) <= 2048)
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

