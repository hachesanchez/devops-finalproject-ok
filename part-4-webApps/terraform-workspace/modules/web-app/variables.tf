variable "name" {
  type        = string
  description = "Name of the web app"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "app_service_plan_id" {
  type        = string
  description = "ID of the app service plan"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "web_apps" {
  type        = map(string)
  description = "Map of web app names"
}
