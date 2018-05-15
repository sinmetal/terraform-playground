resource "google_project" "sinmetal-firestore-2" {
  name       = "sinmetal-firestore-2"
  project_id = "sinmetal-firestore-2"
  folder_id  = "${google_folder.playground-firestore.name}"
}

resource "google_project" "sinmetal-firestore-3" {
  name       = "sinmetal-firestore-3"
  project_id = "sinmetal-firestore-3"
  org_id     = ""
  folder_id  = "${google_folder.playground-firestore.name}"
}
