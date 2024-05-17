terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 5.38"
      configuration_aliases = [aws.replication]
    }
  }
}
