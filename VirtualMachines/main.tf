provider "google" {
  project = "terraformrunning"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "compute" {
  source    = "./modules/compute"
  vm_prefix = "vm"
}

module "compute-1" {
  source    = "./modules/compute"
  vm_prefix = "vm"
}
