variable "monitor_jsons" {
  description = <<EOT
Map of monitor_jsons, attributes below
Required:
    - monitor
Optional:
    - url
EOT

  type = map(object({
    monitor = string
    url     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_jsons : (
        can(jsondecode(v.monitor))
      )
    ])
    error_message = "must be valid JSON"
  }
}

