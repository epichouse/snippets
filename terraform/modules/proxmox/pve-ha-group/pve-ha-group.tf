terraform {

    required_version = ">= 0.13.0"

    required_providers {
        proxmox = {
            source = "bpg/proxmox"
        }
        
    }
}

resource "proxmox_virtual_environment_hagroup" "this" {
  group   = var.pve_ha_group_name
  comment = var.pve_ha_group_name

  # Member nodes, with or without priority.
  nodes = var.pve_ha_group_members
  
  restricted  = false
  no_failback = false
}