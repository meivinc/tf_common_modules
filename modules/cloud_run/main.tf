resource "google_cloud_run_v2_service" "default" {
  provider            = google-beta
  name                = "${var.cloudrun_prefix}-${var.application_name}"
  deletion_protection = false
  ingress             = "INGRESS_TRAFFIC_ALL"
  location            = var.default_region
  project             = var.project_id
  iap_enabled         = var.enable_run_iap
  launch_stage = "BETA"
  template {
    scaling {
      min_instance_count = var.scaling_config.min_instance_count
      max_instance_count = var.scaling_config.max_instance_count
    }
    containers {
      image = var.image_path
      
      # Regular environment variables
      dynamic "env" {
        for_each = var.environment_variables
        content {
          name  = env.value.name
          value = env.value.value
        }
      }
      
      # Secret environment variables from Secret Manager
      dynamic "env" {
        for_each = var.secret_environment_variables
        content {
          name = env.value.name
          value_source {
            secret_key_ref {
              secret  = env.value.secret_name
              version = env.value.version
            }
          }
        }
      }
      
      resources {
        limits = {
          cpu    = var.resource_limits.cpu
          memory = var.resource_limits.memory
        }
        cpu_idle = true
      }
      ports {
        container_port = var.container_port
      }
    }
  }
}



data "google_project" "project_fetch" {
  project_id = var.project_id
}


# resource "google_project_iam_member" "automation_sa_role_bucket_access" {
#   count   = var.enable_iam_changes ? 1 : 0
#   project = var.project_id
#   role    = "roles/run.invoker"
#   member  = "serviceAccount:service-${data.google_project.project_fetch.number}@gcp-sa-iap.iam.gserviceaccount.com"
# }



