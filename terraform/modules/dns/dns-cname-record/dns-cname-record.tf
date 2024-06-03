## Configure the DNS Provider
#provider "dns" {
#  update {
#    server        = "10.0.0.2"
#  }
#}

terraform {

    required_version = ">= 0.13.0"

    required_providers {
        dns = {
            source = "hashicorp/dns"
        }
    }
}

resource "dns_cname_record" "this" {
  zone  = var.zone
  name  = var.hostname
  cname = var.cname
}