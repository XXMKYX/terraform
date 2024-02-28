
resource "google_project" "my_project" {
  name       = var.PROYECT_NAME
  project_id = var.PROYECT_NAME
  //org_id     = "1234567"
  //folder_id = "folders/${var.FOLDER_ID}"
}

output "PROYECT_NAME" {
  value = var.PROYECT_NAME
}