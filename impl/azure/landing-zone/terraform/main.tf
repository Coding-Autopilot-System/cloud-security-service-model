// Terraform landing zone skeleton

terraform {
  required_version = ">= 1.5.0"
}

module "identity" {
  source = "./modules/identity"
}

module "network" {
  source = "./modules/network"
}

module "logging" {
  source = "./modules/logging"
}

module "policies" {
  source = "./modules/policies"
}
