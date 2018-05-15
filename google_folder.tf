resource "google_folder" "playground" {
  display_name = "Playground"
  parent     = "organizations/69165754818"
}

resource "google_folder" "demo" {
  display_name = "Demo"
  parent     = "organizations/69165754818"
}