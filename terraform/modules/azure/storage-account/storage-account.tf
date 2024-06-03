resource "azurerm_storage_account" "this" {
  name                = format("st%s%s%s",var.project,var.name,var.environment)
  resource_group_name = var.resource_group
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
  access_tier = "Cool"
  enable_https_traffic_only = "true"
  min_tls_version = "TLS1_2"
  public_network_access_enabled = true
  tags = {
  source = "terraform"
  project = var.project
  resourcetype = "backend"
  }
}