resource "azurerm_service_plan" "this" {
  name                = format("asp-%s-%s",var.project,var.environment)
  resource_group_name = var.resource_group
  location            = var.region
  os_type             = "Linux"
  sku_name = "F1"
  tags = {
    source = "terraform"
    project = var.project
    resourcetype = "backend"
  }
}