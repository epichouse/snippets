locals {
  snet = "/24"
  fullip_address = "${var.vm_ip}${local.snet}"
  tags =  (contains(var.vm_tags, "terraform") == false ? concat(var.vm_tags, ["terraform"]) : var.vm_tags)
  description = "<table><tr><th></th><th></th><th></th></tr><tr><th><strong><em>Virtual Machine Configuration</em></strong></th><th></th><th></th><tr><td><b>Operating System</b></td>    <td>Ubuntu Server 22.04</td><td></td></tr><tr><td><b>Server Description</b></td><td>${var.vm_description}</td><td></td></tr></table><p><em>This virtual machine was deployed via Terraform, all changes must be made/reflected in source.</em></p>"
}

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

resource "proxmox_virtual_environment_vm" "this" {
  name        = var.vm_name
  agent {enabled = "true"}
  node_name = var.vm_primarynode
  description = local.description
  vm_id     = var.vm_id
  tags        = local.tags
  on_boot = var.vm_autostart
  started = false
  bios = "ovmf"  
  stop_on_destroy = true
  machine = "q35"
    clone {
    vm_id = 910
    node_name = "vm-pve-test-01"
    full = true
    }
  initialization {
    datastore_id = var.vm_datastorename
    interface = "ide2"
    ip_config {
      ipv4 {
        address = local.fullip_address
        gateway = var.vm_gateway
      }
    }
    user_account {
      keys = var.vm_sshkey
      username = "dan"
      password = var.vm_password

    }
  }
  cpu {
    sockets = 1
    cores = var.vm_cores
    type = "host"
    units = 1024
    architecture = "x86_64"
  }
  memory {
    dedicated = var.vm_memory
    floating = var.vm_memory
    shared = 0
  }
  network_device {
    bridge = "vmbr0"
    enabled = true
    firewall = false
 #   vlan_id = var.vm_vlan
  }
  lifecycle {
    ignore_changes = [
      efi_disk,
      clone,
      operating_system,
      agent,
      keyboard_layout,
      vga,
      started,
      reboot,
      cpu[0].architecture,
      memory[0].floating,
      startup,
      serial_device,
      disk,
      initialization[0].dns,
    ]
  }
}

#resource "dns_a_record_set" "this" {
#  zone = "windows.cloud46.com."
#  name = var.vm_name
#  addresses = [
#    var.vm_ip,
#  ]
#}

resource "proxmox_virtual_environment_haresource" "this" {
  depends_on = [
    proxmox_virtual_environment_vm.this
  ]
  resource_id = "vm:${var.vm_id}"
  state       = "started"
  group       = var.vm_primarynode
  comment     = "Managed by Terraform"
}