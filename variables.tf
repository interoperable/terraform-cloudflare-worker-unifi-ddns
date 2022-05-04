variable "cloudflare_email" {
  description = "The email adress used for your Cloudflare account"
}

variable "cloudflare_api_key" {
  description = "Cloudflare api key"
}

variable "domain_name" {
  description = "DNS Domain Name used for the Zone Records"
}
variable "hostname" {
  description = "The host portion of the fqdn to register"
}
variable "unifi_username" {
  description = "Unifi Username"
}
variable "unifi_password" {
  description = "Unifi Passord"
}
variable "unifi_api_url" {
  description = "Unifi Api Url"
}
variable "insecure" {
  default = true
}
