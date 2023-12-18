output "web_app_front_url" {
  value = module.web_app_front.web_app_url
}

output "web_app_back_url" {
  value = module.web_app_back.web_app_url
}

output "app_service_plan_id" {
  value = module.app_service_plan.app_service_plan_id
}
