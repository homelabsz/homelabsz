provider "aws" {
  profile = var.profile
  region  = var.region
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Account     = local.account
      Environment = var.environment
      Name        = "Terraform Default Tags"
    }
  }
}
