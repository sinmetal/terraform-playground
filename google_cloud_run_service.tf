resource "google_cloud_run_service" "hello" {
  project  = "sinmetal-terraform"
  name     = "hello"
  location = "asia-northeast1"

  template {
    metadata {
      annotations = {
      }
      labels = {
        "run.googleapis.com/ingress" = "internal-and-cloud-load-balancing"
      }
    }
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
}