# locals.tf
# Local values used across the project

locals {
  cluster_name = var.cluster_name

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
