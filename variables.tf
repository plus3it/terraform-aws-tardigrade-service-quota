variable "service_quota" {
  description = "Object of attributes for the AWS Service Quota"
  type = object({
    value        = string
    service_code = string
    quota_code   = optional(string)
    quota_name   = optional(string)
  })

  validation {
    condition = can(
      var.service_quota.quota_code != null,
      var.service_quota.quota_name != null,
    )
    error_message = "Either `quota_code` or `quota_name` must be provided"
  }
}
