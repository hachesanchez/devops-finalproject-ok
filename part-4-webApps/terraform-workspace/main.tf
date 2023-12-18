provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source               = "./storage_account"
  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  location             = var.location
}

module "app_service_plan" {
  source                = "./modules/app_service_plan"
  resource_group_name   = var.resource_group_name
  app_service_plan_name = var.app_service_plan_name
  location              = var.location
}

module "web_apps" {
  source              = "./modules/web_app"
  web_apps            = var.web_apps
  resource_group_name = module.app_service_plan.resource_group_name
  app_service_plan_id = module.app_service_plan.app_service_plan_id
}


