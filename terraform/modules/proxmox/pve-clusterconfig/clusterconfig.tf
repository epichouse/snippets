terraform {

    required_version = ">= 0.13.0"

    required_providers {
        proxmox = {
            source = "bpg/proxmox"
        }
        dns = {
            source = "hashicorp/dns"
        }
    }
}

resource "proxmox_virtual_environment_cluster_options" "nested1" {
  language                  = "en"
  keyboard                  = "en-gb"
  email_from                = "nestedpve@cloud46.com"
  bandwidth_limit_migration = 555555
  bandwidth_limit_default   = 666666
  max_workers               = 5
  migration_type            = "secure"
  crs_ha_rebalance_on_start = true
  ha_shutdown_policy        = "migrate"
 # description               = "Nested PVE Cluster defined in Terraform!"
}