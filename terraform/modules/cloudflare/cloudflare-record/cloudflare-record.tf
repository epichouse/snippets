terraform {
  required_version = ">= 1.3.0"
  
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.dns_api_token
}

resource "cloudflare_record" "this" {
  zone_id = var.dns_zone_id
  name    = var.dns_name
  value   = var.dns_value
  type    = var.dns_record_type
  proxied = false
  comment = "Created by Terraform"
  ttl     = 3600
}