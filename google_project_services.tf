resource "google_project_services" "project" {
  project  = "sinmetal-terraform"
  services = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com", "pubsub.googleapis.com"]
}
