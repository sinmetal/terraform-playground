resource "google_project" "sinmetal-firestore-2" {
  name       = "sinmetal-firestore-2"
  project_id = "sinmetal-firestore-2"
  org_id     = "69165754818"
  folder_id  = "${google_folder.playground-firestore.name}"
}
