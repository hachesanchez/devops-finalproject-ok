resource "azurerm_app_service" "web_apps" {
  for_each = var.web_apps

  name                = each.value
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
}
