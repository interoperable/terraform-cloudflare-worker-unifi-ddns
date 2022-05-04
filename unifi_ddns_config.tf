resource "unifi_dynamic_dns" "unifi_dns" {
  service = "dyndns"
  host_name = "${var.hostname}.${var.domain_name}"
  server   = "${cloudflare_worker_script.unifi_ddns.name}.${var.hostname}.${lookup(data.cloudflare_zones.unifi_ddns.zones[0], "name")}.workers.dev/update?ip=%i&hostname="
  login    = var.cloudflare_email
  password = var.cloudflare_api_key
}
