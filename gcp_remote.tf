terraform {
  backend "gcs" {
    bucket  = "tfstate-sinmetal-terraform"
    prefix  = "terraform/state"
  }
}