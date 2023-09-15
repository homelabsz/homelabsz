provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Account     = local.account
      Application = "setup-dns"
      CostCenter  = "root-services"
      Environment = var.environment
      ManagedBy   = "terraform"
      Name        = "terraform-default-name"
      Owner       = "root-services"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
