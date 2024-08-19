resource "azurerm_application_insights" "this" {
  name                = format("ai-%s-%s",var.project,var.environment)
  location            = var.region
  resource_group_name = var.resource_group
  application_type    = "web"
  tags = {
  source = "terraform"
  project = var.project
  resourcetype = "backend"
  }
}