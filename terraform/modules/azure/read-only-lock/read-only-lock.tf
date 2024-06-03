resource "azurerm_management_lock" "this" {
  name       = "Read Only Lock"
  scope      = var.locked_resource
  lock_level = "ReadOnly"
  notes      = "This Resource was deployed by Terraform and has had a Read Only Lock Applied."
}