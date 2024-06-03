output "storage_name" {
  description = ""
  value = azurerm_storage_account.this.name
}

output "storage_key" {
  description = ""
  value = azurerm_storage_account.this.primary_access_key 
}