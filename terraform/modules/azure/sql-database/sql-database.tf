resource "azurerm_mssql_database" "this" {
  name                = format("db-%s-%s-%s",var.project,var.name,var.environment)
  server_id         = var.sql-server-id
  sku_name = "Basic"
  zone_redundant = false
  geo_backup_enabled = false
  storage_account_type = "Local"
  auto_pause_delay_in_minutes = 10
    tags = {
        source = "terraform"
        project = var.project
        resourcetype = "frontend"
    }
#  long_term_retention_policy {
#    weekly_retention = "P1W"
#  }
  # prevent the possibility of accidental data loss
    #  prevent_destroy = true

}