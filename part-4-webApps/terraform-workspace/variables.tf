variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the app service plan"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
  default     = "francecentral"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account for Terraform state"
}

variable "web_apps" {
  type        = map(string)
  description = "Map of web app names"
}

variable "postgres_server_name" {
  type        = string
  description = "Name of the PostgreSQL server"
}
