terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
    unifi = {
      source = "paultyng/unifi"
      version = "0.34.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}
provider "unifi" {
  username = var.unifi_username # optionally use UNIFI_USERNAME env var
  password = var.unifi_password # optionally use UNIFI_PASSWORD env var
  api_url  = var.unifi_api_url  # optionally use UNIFI_API env var

  # you may need to allow insecure TLS communications unless you have configured
  # certificates for your controller
  allow_insecure = var.insecure # optionally use UNIFI_INSECURE env var

  # if you are not configuring the default site, you can change the site
  # site = "foo" or optionally use UNIFI_SITE env var
}
