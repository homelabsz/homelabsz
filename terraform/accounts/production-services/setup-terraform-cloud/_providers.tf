provider "tfe" {}

provider "aws" {
  profile = var.profile
  region  = var.region
  default_tags {
    tags = {
      Account     = local.account
      Application = "setup-terraform"
      CostCenter  = "root-services"
      Environment = var.environment
      ManagedBy   = "terraform"
      Name        = "terraform-default-name"
      Owner       = "root-services"
    }
  }
}
