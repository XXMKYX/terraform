resource "google_project" "my_project" {
  name       = var.PROYECT_NAME
  project_id = "your-project-id"
  org_id     = "1234567"
}