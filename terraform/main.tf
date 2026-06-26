locals {
  project_name = "innovatech"
  environment  = "dev"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "Terraform"
    Owner       = "Fernanda"
  }
}