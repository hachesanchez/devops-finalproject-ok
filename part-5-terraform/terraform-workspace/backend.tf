terraform {
  backend "azurerm" {
    resource_group_name  = "rg-the-frijoles-aks"
    storage_account_name = "staccthefrijoles"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
