variable "vm_id" {
  description = ""
  type = string
}
variable "vm_name" {
  description = ""
  type = string
}
variable "vm_ip" {
  description = ""
  type = string
}
variable "vm_gateway" {
  description = ""
  type = string
}
variable "vm_password" {
    type = string
}
variable "vm_sshkey" {
    type = list
}
variable "vm_description" {
    type = string
}
variable "vm_memory" {
    type = number
}
variable "vm_cores" {
    type = number
}
variable "vm_vlan" {
    type = number
}
variable "vm_tags" {
    type = list
}
variable "vm_autostart" {
    type = string
}

variable "vm_primarynode" {
  type = string
}

variable "vm_datastorename" {
  
}