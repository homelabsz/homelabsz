terraform {
  required_version = "~> 1.3"
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.27"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}
