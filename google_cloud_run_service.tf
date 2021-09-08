resource "google_cloud_run_service" "hello" {
  project  = "sinmetal-terraform"
  name     = "hello"
  location = "asia-northeast1"

  template {
    metadata {
      annotations = {
        "run.googleapis.com/ingress" : "internal-and-cloud-load-balancing"
      }
      labels = {
      }
    }
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
}