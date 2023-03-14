// all resources

locals {
  type = "metric alert"
}

resource "datadog_monitor" "cpumonitor" {
  name = module.myteam.mymonitor.name
  type = local.type
  message = "CPU usage alert"
  query = "avg(last_5m):avg:system.cpu.system{*} by {host} > 60"
}

resource "datadog_monitor" "memmonitor" {
  message = "${datadog_monitor.cpumonitor.name} - mem"
  name = "value"
  query = "value"
  type = "metric alert"
}