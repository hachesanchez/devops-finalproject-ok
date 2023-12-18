resource_group_name   = "rg-the-frijoles2"
app_service_plan_name = "the-frijoles-app-service-plan"
location              = "francecentral"
storage_account_name  = "tfstatestorageaccountname"

web_apps = {
  front = "the-frijoles-front"
  back  = "the-frijoles-back"
}
