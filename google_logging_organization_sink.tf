resource "google_logging_organization_sink" "organization-auditlog-sink" {
  name   = "organization-auditlog-sink"
  org_id = "69165754818"

  # Can export to pubsub, cloud storage, or bigtable
  destination = "bigquery.googleapis.com/projects/logging-sinmetal-org/datasets/${google_bigquery_dataset.log-dataset.dataset_id}"

  # Log all WARN or higher severity messages relating to instances
  filter = "protoPayload.@type = type.googleapis.com/google.cloud.audit.AuditLog"
}

resource "google_bigquery_dataset" "log-dataset" {
  project    = "logging-sinmetal-org"
  dataset_id = "organization_audit_log"
}

resource "google_project_iam_binding" "log-writer" {
  project = "logging-sinmetal-org"
  role    = "roles/bigquery.dataEditor"

  members = [
    "${google_logging_organization_sink.organization-auditlog-sink.writer_identity}",
    "${google_logging_organization_sink.organization-gae-sink.writer_identity}",
  ]
}

resource "google_logging_organization_sink" "organization-gae-sink" {
  name   = "organization-gae-sink"
  org_id = "69165754818"

  # Can export to pubsub, cloud storage, or bigtable
  destination = "bigquery.googleapis.com/projects/logging-sinmetal-org/datasets/${google_bigquery_dataset.log-dataset.dataset_id}"

  # Log all WARN or higher severity messages relating to instances
  filter = "resource.type = gae_app"
}
