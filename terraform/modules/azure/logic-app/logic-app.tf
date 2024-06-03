resource "azurerm_logic_app_workflow" "this" {
  name                = format("la-%s-%s-%s",var.project,var.name,var.environment)
  location            = var.region
  resource_group_name = var.resource_group

  identity {
    type = "SystemAssigned"
  }
  tags = {
  source = "terraform"
  project = var.project
  resourcetype = "middleware"
  }
}