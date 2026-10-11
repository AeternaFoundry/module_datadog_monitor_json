resource "datadog_monitor_json" "monitor_jsons" {
  for_each = var.monitor_jsons

  monitor = each.value.monitor
  url     = each.value.url
}

