
output "service_name" {
  description = "Cloud Run service name"
  value       = google_cloud_run_v2_service.default.name
}

output "service_url" {
  description = "Public URL of the Cloud Run service"
  value       = google_cloud_run_v2_service.default.uri
}

output "latest_revision" {
  description = "Latest ready revision of the service"
  value       = google_cloud_run_v2_service.default.latest_ready_revision
}

output "container_image" {
  description = "Container image used by the service"
  value       = google_cloud_run_v2_service.default.template[0].containers[0].image
}

output "environment_variables_count" {
  description = "Number of environment variables configured"
  value       = length(var.environment_variables)
}

output "secret_environment_variables_count" {
  description = "Number of secret environment variables configured"
  value       = length(var.secret_environment_variables)
}

output "resource_limits" {
  description = "Resource limits configured for the service"
  value = {
    cpu    = var.resource_limits.cpu
    memory = var.resource_limits.memory
  }
}

output "scaling_config" {
  description = "Scaling configuration for the service"
  value = {
    min_instance_count = var.scaling_config.min_instance_count
    max_instance_count = var.scaling_config.max_instance_count
  }
}
