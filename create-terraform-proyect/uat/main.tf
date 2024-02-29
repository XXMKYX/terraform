//CREATE PROYECT
resource "google_project" "my_project" {
  name       = var.PROYECT_NAME
  project_id = var.PROYECT_NAME
  //org_id     = "1234567"
  //folder_id = "folders/${var.FOLDER_ID}"
}

resource "google_billing_project_info" "default" {
  project         = google_project.my_project.project_id
  billing_account = var.BILLING_ACCOUNT
}
//ACTIVATE SUBILLING ACCOUNT
/*resource "google_billing_subaccount" "subaccount" {
    display_name = "Mi cuenta de facturación"
    master_billing_account = var.BILLING_ACCOUNT
}*/

//ACTIVATE APIs
resource "google_project_service" "service" {
  for_each = toset(var.SERVICES_API)

  service = each.key
  project            = google_project.my_project.project_id
  disable_on_destroy = true
}

//CONSOLE OUTPUT
output "PROYECT_NAME" {
  value = [var.PROYECT_NAME,var.BILLING_ACCOUNT,var.SERVICES_API]
}
