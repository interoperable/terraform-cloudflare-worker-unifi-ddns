# terraform-cloudflare-worker-unifi-ddns

## Required Terraform providers

* cloudflare/cloudflare
* paultyng/unifi


## terraform.tfvars

```
# CloudFlare
cloudflare_email = "bwayne@contoso.tld"
cloudflare_api_key = "abcdef123456780abcdef123456780abcdef1"
domain_name = "contoso.tld"
hostname = "server"
# Unifi
unifi_username = "admin"
unifi_password = "P@$$w0rd"
unifi_api_url = "https://192.168.1.2:8443"
insecure = "true"
```
