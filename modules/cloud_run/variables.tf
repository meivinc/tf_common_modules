
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


variable "enable_iam_changes" {
  description = "Should Terraform apply IAM changes?"
  type        = bool
  default     = false
}

variable "enable_run_iap" {
  description = "Should IAP be enabled on cloud run?"
  type        = bool
  default     = false
}