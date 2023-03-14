resource "datadog_monitor" "cpumonitor" {
  name = "name"
  type = "metric alert"
  message = "CPU usage alert"
  query = "avg(last_5m):avg:system.cpu.system{*} by {host} > 60"
}