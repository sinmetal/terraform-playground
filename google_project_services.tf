resource "google_project_services" "project" {
  project = "sinmetal-terraform"

  services = ["cloudapis.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "bigquery.googleapis.com",
    "bigquery-json.googleapis.com",
    "storage.googleapis.com",
    "pubsub.googleapis.com",
  ]
}
