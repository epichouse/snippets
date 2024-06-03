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
variable "vm_description" {
    type = string
}
variable "vm_memory" {
    type = number
}
variable "vm_cores" {
    type = number
}
variable "vm_disksize" {
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
variable "vm_operatingsystem" {
    type = string
}
variable "vm_operatingsystemlong" {
    type = string
}