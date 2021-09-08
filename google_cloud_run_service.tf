resource "google_cloud_run_service" "hello" {
  name     = "hello"
  location = "asia-northeast1"

  template {
    metadata {
      annotations = {
        "run.googleapis.com/ingress" = "internal-and-cloud-load-balancing"
      }
    }
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }

  lifecycle {
    ignore_changes = [
    ]
  }
}