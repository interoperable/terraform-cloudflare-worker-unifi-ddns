data "http" "unifi_ddns" {
  url = "https://raw.githubusercontent.com/willswire/unifi-cloudflare-ddns/main/index.js"

  # Optional request headers
  request_headers = {
    Accept = " text/*"
  }
}

resource "local_file" "unifi_ddns" {
  content    = data.http.unifi_ddns.body
  filename   = "${path.module}/index.js"
  depends_on = [data.http.unifi_ddns]
}
