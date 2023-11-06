terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  region       = var.region
  zone         = var.zone
}

terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}

# terraform {
#   backend "gcs" {
#     bucket  = "tf-bucket-481065"
#     prefix  = "terraform/state"
#   }
# }

# module "my_gcs_bucket" {
#   source      = "./modules/storage"
#   project_id   = var.project_id
#   location   = var.location
# }

module "instance_module" {
  source     = "./modules/instances"
  zone       = var.zone
  region     = var.region
}

# module "vpc_module" {
#   source       = "terraform-google-modules/network/google"
#   version      = "~> 6.0"
#   project_id   = var.project_id
#   network_name = var.network_name
#   routing_mode = "GLOBAL"
#   mtu          = 1460

#   subnets = [
#     {
#       subnet_name   = "subnet-01"
#       subnet_ip     = "10.10.10.0/24"
#       subnet_region = "us-east1"
#     },
#     {
#       subnet_name           = "subnet-02"
#       subnet_ip             = "10.10.20.0/24"
#       subnet_region         = "us-east1"
#       subnet_private_access = "true"
#       subnet_flow_logs      = "true"
#     }
#   ]
# }

# resource "google_compute_firewall" "firewall" {
#   name    = "tf-firewall"
#   network = module.vpc_module.network_name

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }
#   source_ranges = ["0.0.0.0/0"]
# }
