variable "PROYECT_NAME" {
    type = string
    default = "terraform-default-proyect-name-uat"
}

variable "FOLDER_ID" {
  type = string
  default = "terraform-default-folder-name"
  description = "Folder = Client"
}

variable "BILLING_ACCOUNT"{
  type = string
}

variable "SERVICES_API" {
  type = list
  default = [
    "cloudbuild.googleapis.com",
    "artifacregistry.googleapis.com",
    "cloudrun.googleapis.com"
    ]
}