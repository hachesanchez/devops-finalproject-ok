resource "azurerm_storage_account" "storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type

  tags = {
    environment = azurerm_resource_group.rg.tags["environment"]
  }
}
