
variable "default_region" {
  description = "Default region to create resources where applicable."
  type        = string
  default     = "europe-west1"
}


variable "cloudrun_prefix" {
  description = "Name prefix for cloud run"
  type        = string
  default     = "cr"
}

variable "image_path" {
  description = "Docker Image path"
  type        = string
  default     = null
}

variable "container_port" {
  description = "Container Port to associate"
  type        = string
  default     = null
}

variable "application_name" {
  description = "Default application to create"
  type        = string
  default     = null
}

variable "project_id" {
  description = "default project ID"
  type        = string
  default     = null
}

variable "enable_run_iap" {
  description = "Should IAP be enabled on cloud run?"
  type        = bool
  default     = false
}

variable "environment_variables" {
  description = "List of environment variables to set in the container. Each object should have 'name' and 'value' keys."
  type = list(object({
    name  = string
    value = string
  }))
  default = []
  validation {
    condition = alltrue([
      for env in var.environment_variables : 
      can(regex("^[a-zA-Z_][a-zA-Z0-9_]*$", env.name))
    ])
    error_message = "Environment variable names must start with a letter or underscore and contain only alphanumeric characters and underscores."
  }
}

variable "secret_environment_variables" {
  description = "List of secret environment variables from Secret Manager. Each object should have 'name' (env var name), 'secret_name' (Secret Manager secret name), and optionally 'version' (defaults to 'latest')."
  type = list(object({
    name        = string
    secret_name = string
    version     = optional(string, "latest")
  }))
  default = []
  validation {
    condition = alltrue([
      for env in var.secret_environment_variables : 
      can(regex("^[a-zA-Z_][a-zA-Z0-9_]*$", env.name))
    ])
    error_message = "Environment variable names must start with a letter or underscore and contain only alphanumeric characters and underscores."
  }
}

variable "resource_limits" {
  description = "Resource limits for the container"
  type = object({
    cpu    = optional(string, "1")
    memory = optional(string, "128Mi")
  })
  default = {
    cpu    = "1"
    memory = "128Mi"
  }
}

variable "scaling_config" {
  description = "Scaling configuration for the Cloud Run service"
  type = object({
    min_instance_count = optional(number, 0)
    max_instance_count = optional(number, 1)
  })
  default = {
    min_instance_count = 0
    max_instance_count = 1
  }
}