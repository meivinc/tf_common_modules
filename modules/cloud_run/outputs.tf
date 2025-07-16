
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
