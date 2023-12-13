resource "google_project_service" "enable_rsc_mngr_api" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

##################

module "enable_apis" {
  source           = "git::https://#{git_access_token}#@dev.azure.com/Arauco/CL-OPER-LABS/_git/tf-modules//enable-api?ref=develop"
  project          = var.project_id
  api_service_list = var.google_apis
  depends_on       = [google_project_service.enable_rsc_mngr_api]
}

###############

module "compute_engine" {
  source                        = "git::https://#{git_access_token}#@dev.azure.com/Arauco/CL-OPER-LABS/_git/tf-modules//compute?ref=develop"
  company                       = var.company
  team                          = var.team
  zone                          = var.zone
  env_name                      = var.env_name
  machine_type                  = var.compute_machine_type
  secure_boot                   = var.compute_secure_boot
  boot_disk_image               = var.compute_boot_disk_image
  preemptible                   = var.compute_preemtible
  subnetwork                    = var.compute_subnetwork
  network_stack_type            = var.compute_network_stack_type
  startup-script                = var.compute_startup-script
  service_account_id            = var.compute_service_account_id
  service_account_display_name  = var.compute_service_account_display_name
  service_account_scope         = var.compute_service_account_scope
  depends_on                    = [module.enable_apis]
}