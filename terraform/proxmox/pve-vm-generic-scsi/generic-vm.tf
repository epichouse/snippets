locals {
  snet = "/24"
  fullip_address = "${var.vm_ip}${local.snet}"
  tags =  (contains(var.vm_tags, "terraform") == false ? concat(var.vm_tags, ["terraform"]) : var.vm_tags)
  description = "<table><tr><th></th><th></th><th></th></tr><tr><th><strong><em>Virtual Machine Configuration</em></strong></th><th></th><th></th><tr><td><b>Operating System</b></td>    <td>${var.vm_operatingsystemlong}</td><td></td></tr><tr><td><b>Server Description</b></td><td>${var.vm_description}</td><td></td></tr></table><p><em>This virtual machine was deployed via Terraform, all changes must be made/reflected in source.</em></p>"
  
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
  node_name = "srv-pve-prod-01"
  description = local.description
  vm_id     = var.vm_id
  tags        = local.tags
  on_boot = var.vm_autostart
  started = false
  bios = "ovmf"  
  stop_on_destroy = true
  machine = "pc-q35-8.0"
  scsi_hardware = "virtio-scsi-single"
  vga {
    enabled = true
  }
  operating_system {
    type = var.vm_operatingsystem
  }
  cpu {
    sockets = 1
    cores = var.vm_cores
    type = "host"
    units = 1024
    architecture = "x86_64"
    flags = []
  }
  memory {
    dedicated = var.vm_memory
    floating = var.vm_memory
    shared = 0
  }
  disk {
    datastore_id = "local-nvme"
    interface = "scsi0"
    size = var.vm_disksize
    file_format = "raw"
  }
  efi_disk {
    datastore_id = "local-nvme"
    pre_enrolled_keys = true    
    file_format = "raw"
    type = "4m"
  }
  tpm_state {
    datastore_id = "local-nvme"
  }
  network_device {
    bridge = "vmbr0"
    enabled = true
    firewall = false
    vlan_id = var.vm_vlan
  }
  lifecycle {
    ignore_changes = [
      clone,
      agent,
      keyboard_layout,
      vga,
      started,
      reboot,
      cpu[0].architecture,
      memory[0].floating,
      disk,
      tpm_state,
      efi_disk[0].pre_enrolled_keys,
      startup,
      machine,
      hostpci,
    ]
  }
}

resource "dns_a_record_set" "this" {
  zone = "windows.cloud46.com."
  name = var.vm_name
  addresses = [
    var.vm_ip,
  ]
}