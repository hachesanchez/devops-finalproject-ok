resource "azurerm_storage_container" "tfstate" {
  name                  = var.tfstate_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.tfstate_access_type

  depends_on = [azurerm_storage_account.storage-account]
}
