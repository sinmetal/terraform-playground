resource "google_storage_bucket" "sinmetal-terraform-20180327a" {
  project       = "sinmetal-terraform"
  name          = "sinmetal-terraform-20180327a"
  location      = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket" "sinmetal-terraform-20180327b" {
  project       = "sinmetal-terraform"
  name          = "sinmetal-terraform-20180327b"
  location      = "us-central1"
  storage_class = "STANDARD"
}
