terraform {
  required_version = "~> 1.3"
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.27"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}
