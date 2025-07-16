
output "service_name" {
  value       = google_cloud_run_service.main.name
  description = "Name of the created service"
}

output "revision" {
  value       = google_cloud_run_service.main.status[0].latest_ready_revision_name
  description = "Deployed revision for the service"
}

output "service_url" {
  value       = google_cloud_run_service.main.status[0].url
  description = "The URL on which the deployed service is available"
}
