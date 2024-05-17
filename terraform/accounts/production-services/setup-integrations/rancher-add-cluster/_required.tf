terraform {
  required_version = "~> 1.5"
  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = "~> 3.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}
