resource "azurerm_servicebus_namespace" "this" {
  name                = format("sb-%s-%s",var.project,var.environment)
  location            = var.region
  resource_group_name = var.resource_group
  sku                 = "Standard"
  public_network_access_enabled = true
  minimum_tls_version = "1.2"

  identity {
    type = "SystemAssigned"
  }
  tags = {
  source = "terraform"
  project = var.project
  resourcetype = "middleware"
  }
}

resource "azurerm_servicebus_queue" "this" {
    for_each = var.queue_name
    name         = format("%s",each.value)
    namespace_id = azurerm_servicebus_namespace.this.id

    dead_lettering_on_message_expiration = false
    enable_partitioning = false
    requires_duplicate_detection = true
    max_delivery_count = 10
    max_size_in_megabytes = 5120
}

resource "azurerm_servicebus_topic" "this" {
  for_each = var.topic_name
  name         = format("%s",each.value)
  namespace_id = azurerm_servicebus_namespace.this.id

  auto_delete_on_idle                     = "P10675199DT2H48M5.4775807S"
  default_message_ttl                     = "P14D"
  duplicate_detection_history_time_window = "PT10M"
  enable_batched_operations               = true
  enable_partitioning                     = false
  enable_express                          = false
  max_size_in_megabytes                   = 1024
  requires_duplicate_detection            = true
  support_ordering                        = true
}