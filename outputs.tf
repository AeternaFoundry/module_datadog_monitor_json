output "monitor_jsons_id" {
  description = "Map of id values across all monitor_jsons, keyed the same as var.monitor_jsons except keys with no id are omitted"
  value       = { for k, v in datadog_monitor_json.monitor_jsons : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_jsons_monitor" {
  description = "Map of monitor values across all monitor_jsons, keyed the same as var.monitor_jsons except keys with no monitor are omitted"
  value       = { for k, v in datadog_monitor_json.monitor_jsons : k => v.monitor if v.monitor != null && length(v.monitor) > 0 }
}
output "monitor_jsons_url" {
  description = "Map of url values across all monitor_jsons, keyed the same as var.monitor_jsons except keys with no url are omitted"
  value       = { for k, v in datadog_monitor_json.monitor_jsons : k => v.url if v.url != null && length(v.url) > 0 }
}

