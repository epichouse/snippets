terraform {

    required_version = ">= 0.13.0"

    required_providers {
        proxmox = {
            source = "bpg/proxmox"
        }
    }
}

resource "proxmox_virtual_environment_pool" "this" {
  comment = var.poolcomment
  pool_id = var.poolname
}