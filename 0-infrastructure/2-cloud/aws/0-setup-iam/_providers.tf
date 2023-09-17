provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Account     = local.account
      Application = "setup-aws-iam"
      CostCenter  = "root-services"
      Environment = var.environment
      ManagedBy   = "terraform"
      Name        = "terraform-default-name"
      Owner       = "root-services"
    }
  }
}
