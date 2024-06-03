resource "azurerm_mssql_server" "this" {
  name                         = format("sql-%s-%s",var.project,var.environment)
  resource_group_name          = var.resource_group
  location                     = var.region
  version                      = "12.0"
  minimum_tls_version          = "1.2"

  azuread_administrator {
    azuread_authentication_only = true
    login_username = "AAD DC Administrators"
    object_id      = "a5ec818b-a415-438b-a88c-197d7c45d2fd"
  }
  identity {
    type = "SystemAssigned"
  }
  tags = {
  source = "terraform"
  project = var.project
  resourcetype = "backend"
  }
}