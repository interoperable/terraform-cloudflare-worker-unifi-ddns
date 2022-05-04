data "cloudflare_zones" "unifi_ddns" {
  filter {
    name = var.domain_name
    lookup_type = "contains"
    status     = "active"
  }
}
resource "cloudflare_worker_route" "unifi_ddns" {
  zone_id     = lookup(data.cloudflare_zones.unifi_ddns.zones[0], "id")
  pattern     = "${lookup(data.cloudflare_zones.unifi_ddns.zones[0], "name")}/*"
  script_name = cloudflare_worker_script.unifi_ddns.name
  depends_on = [cloudflare_worker_script.unifi_ddns]
}
resource "cloudflare_worker_script" "unifi_ddns" {
  name = "unifi-ddns-cloudflare"
  content = local_file.unifi_ddns.content
  depends_on = [data.http.unifi_ddns,local_file.unifi_ddns]
}
