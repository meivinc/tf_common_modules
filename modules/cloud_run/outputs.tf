
output "service_name" {
  value       = google_cloud_run_v2_service.default.name
  description = "Name of the created service"
}

output "revision" {
  value       = google_cloud_run_v2_service.default.latest_ready_revision.name
  description = "Deployed revision for the service"
}

output "service_url" {
  value       = google_cloud_run_v2_service.default.urls
  description = "The URL on which the deployed service is available"
}
