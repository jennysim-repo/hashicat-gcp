module "network" {
  source  = "app.terraform.io/hashicorp-chip/network/google"
  version = "8.1.0"
  network_name = jhsim-network
  project_id = var.project
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}