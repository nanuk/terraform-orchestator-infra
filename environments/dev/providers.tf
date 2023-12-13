provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = var.service_account_json_path
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
  required_version = ">= 0.13"

  backend "gcs" {
    bucket = "tf-state-example-arauco"
    prefix = "terraform/state"
    credentials = "#{service_account_json_path}#"
  }

}
