resource "azurerm_static_web_app_custom_domain" "this" {
  static_web_app_id = var.static_web_app_id
  domain_name       = var.static_web_app_domain_name
  validation_type   = "cname-delegation"
}