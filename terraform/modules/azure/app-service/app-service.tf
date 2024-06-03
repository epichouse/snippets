resource "azurerm_linux_web_app" "this" {
  name                = format("app-%s-%s-%s",var.project,var.name,var.environment)
  resource_group_name = var.resource_group
  location            = var.region
  service_plan_id     = var.app-service-plan-id
  https_only = true
  identity {
    type = "SystemAssigned"
  }
    site_config {
    always_on = false

    application_stack {
      php_version = "8.1"
    }
    }
    tags = {
        source = "terraform"
        project = var.project
        resourcetype = "frontend"
    }
}