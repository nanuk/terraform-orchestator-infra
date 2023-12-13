###### General Variables

company = "arauco"

team  = "devops"

project_id = "nanuktech-gke"

env_name  = "dev"
  
region = "us-east4"

zone = "us-east4-c"

credentials_tf = "/home/vsts/work/1/s/service.json"

service_account_json_path = "/home/vsts/work/1/s/service.json"

###### Enable Apis

google_apis = {
    "secretmanager.googleapis.com"     = "",
    "container.googleapis.com"         = "",
    "compute.googleapis.com"           = "",
    "servicenetworking.googleapis.com" = "",
    "iam.googleapis.com"               = "",
    "sqladmin.googleapis.com"          = "",
    "container.googleapis.com"         = "",
  }

###### Compute engine

compute_machine_type = "e2-micro"

compute_secure_boot  = true

compute_boot_disk_image  = "debian-cloud/debian-11"

compute_preemtible = true
  
compute_subnetwork  = "projects/nanuktech-gke/regions/us-east4/subnetworks/nanuktech-subnet"
  
compute_network_stack_type = "IPV4_ONLY"
  
compute_startup-script  = ""

compute_service_account_id  = "srva-compute-engine"

compute_service_account_display_name  = "srva-compute-engine"

compute_service_account_scope = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]


###### GKE

cluster_nic_input = "alpha"

node_locations = ["southamerica-west1-a"]

enable_standard = false

enable_apps = true

zones = ["southamerica-west1-a"]

gke_network = "The VPC network to host the cluster in"

gke_subnetwork = "The subnetwork to host the cluster in"

ip_range_pods = "The secondary ip range to use for pods"

ip_range_services = "The secondary ip range to use for services"


subnetwork_master_input = ""
net_secondary_sub_gke_name_input = ""

machine_type_apps = "e2-medium"

machine_type_standard = "e2-standard-2"

initial_node_apps = "1"

initial_node_standard = "1"

min_node_apps = "1"

min_node_standard = "1"

max_node_apps = "3"
  
max_node_standard = "3"

disk_size_gb_apps = 30

disk_size_gb_standard = 30

preemptible_standard = false

preemptible_apps = false

tags  = []

control_plane_authorized_networks = [
    {
      display_name = "Example rule 1"
      cidr_block   = "127.0.0.1/32"
    },
    {
      display_name = "Example rule 2"
      cidr_block   = "127.0.0.2/32"
    }
  ]

oauth_scopes = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/devstorage.read_write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/monitoring.read",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/devstorage.read_write"
  ]


disable_legacy_endpoints  = true
  
client_certificate  = false

gke-node-lb-disabled = "false"

gke-node-pods-autoscaling-disabled = false

gke-node-network-policy-disabled = "false"

master_version = "1.24.10-gke.2300"

node_version_standard = "1.24.10-gke.2300"

node_version_apps = "1.24.10-gke.2300"

node-apps-label = "app"

node-standard-label = "standard"

