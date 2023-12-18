output "web_app_urls" {
  value = { for app in azurerm_app_service.web_apps : app.key => app.value.default_site_hostname }
}
