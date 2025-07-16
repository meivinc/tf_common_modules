resource "google_cloud_run_v2_service" "default" {
  provider            = google-beta
  name                = "${var.cloudrun_prefix}-${var.application_name}"
  deletion_protection = false
  ingress             = "INGRESS_TRAFFIC_ALL"
  location            = var.default_region
  project             = var.project_id
  iap_enabled         = var.enable_run_iap
  template {
    scaling {
      min_instance_count = 0
      max_instance_count = 1
    }
    containers {
      image = var.image_path
      resources {
        limits = {
          cpu    = "1"
          memory = "128Mi"
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


resource "google_project_iam_member" "automation_sa_role_bucket_access" {
  count   = var.enable_iam_changes ? 1 : 0
  project = var.project_id
  role    = "roles/run.invoker"
  member  = "serviceAccount:service-${data.google_project.project_fetch.number}@gcp-sa-iap.iam.gserviceaccount.com"
}



