provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = var.service_account_json_path
}